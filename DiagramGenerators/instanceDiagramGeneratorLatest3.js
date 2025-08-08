#!/usr/bin/env node

import antlr4 from 'antlr4';
import fs from 'fs';
import path from 'path';
import { fileURLToPath, pathToFileURL } from 'url';

const { InputStream, CommonTokenStream, tree, error } = antlr4;
const { DefaultErrorStrategy } = error;
const { ParseTreeWalker } = tree;

// Suppress full‑context error hook.  Without this override, the parser
// prints warnings when it needs to use the more expensive LL(*)
// prediction.  We silence the report to keep output clean.
if (!DefaultErrorStrategy.prototype.reportAttemptingFullContext) {
  DefaultErrorStrategy.prototype.reportAttemptingFullContext = function() {};
}

// Utility: escape text for XML attributes.  Draw.io expects certain
// characters to be entity encoded.  We also leave line breaks untouched
// because multi‑line values are rendered correctly when the HTML flag is set.
function escapeXml(s) {
  return s
    .replace(/&/g, '&amp;')
    .replace(/"/g, '&quot;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;');
}

// Dynamic imports of ANTLR‑generated modules.  We derive the current
// directory from the URL of this module to locate the lexer, parser and
// listener files in the same tree.  Use `await import()` instead of
// static require to work in ES modules.
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const crmlLexer = (await import(pathToFileURL(path.join(__dirname, 'antlr/crmlLexer.js')).href)).default;
const crmlParser = (await import(pathToFileURL(path.join(__dirname, 'antlr/crmlParser.js')).href)).default;
const crmlListener = (await import(pathToFileURL(path.join(__dirname, 'antlr/crmlListener.js')).href)).default;

// Listener subclass that collects class definitions, methods, top‑level
// instances and associations.  It also extracts requirement conditions
// from variable definitions and cleans up instance names to avoid
// duplicates and stray punctuation.
class UMLListener extends crmlListener {
  constructor(tokens) {
    super();
    this.tokens = tokens;
    this.classes = [];
    this.instances = [];
    this.associations = [];
    // Track duplicate instance names per type for disambiguation.
    this.instanceCounts = {};
  }

  // Capture class definitions along with their attributes, methods and
  // requirement conditions.  Each attribute has a name, a type and
  // optionally a boolean expression if it is a Requirement.  An
  // association from the class to the attribute type is recorded for
  // later rendering of diamonds.
  exitClass_def(ctx) {
    const className = ctx.id(0).getText();
    const clazz = { name: className, attributes: [], methods: [] };
    this.classes.push(clazz);

    ctx.class_var_def().forEach((cvar) => {
      const vctx = cvar.var_def();
      if (!vctx) return;
      const tnodes = vctx.getTypedRuleContexts(crmlParser.TypeContext);
      const inodes = vctx.getTypedRuleContexts(crmlParser.IdContext);
      if (!tnodes.length || !inodes.length) return;
      const typeName = tnodes[0].getText().trim();
      const varName = inodes[0].getText().trim();

      // Grab any condition attached to the variable definition.  For
      // Requirement types this corresponds to the boolean predicate
      // following the `is` keyword.  We use the token stream to
      // reconstruct the original text of the expression so that
      // whitespace and user keywords are preserved.
      let condition = '';
      const expCtx = vctx.getTypedRuleContext(crmlParser.ExpContext, 0);
      if (expCtx) {
        condition = this.tokens.getText(expCtx).trim();
      }

      clazz.attributes.push({ name: varName, type: typeName, condition });
      this.associations.push({ source: className, target: typeName, type: 'association' });
    });
  }

  // Collect operator definitions as raw strings and append them to the
  // current class.  Operators in CRML are akin to methods in UML.  The
  // signature includes the entire rule text for maximum fidelity.
  exitOperator_def(ctx) {
    if (!this.classes.length) return;
    const clazz = this.classes[this.classes.length - 1];
    const sig = this.tokens.getText(ctx).trim();
    clazz.methods.push({ name: sig });
  }

  // Record top‑level variable definitions as instances.  We handle
  // constructor syntax such as `Pump (ident = "PO1")` by stripping any
  // parentheses from the parsed identifier and then extracting the
  // argument value assigned to the `ident` parameter to use as the
  // instance name.  If multiple instances end up with the same name,
  // they are suffixed with a count to avoid collisions when mapping
  // positions.
  exitVar_def(ctx) {
    if (!ctx.parentCtx || ctx.parentCtx.ruleIndex !== crmlParser.RULE_element_def) return;
    const tnodes = ctx.getTypedRuleContexts(crmlParser.TypeContext);
    const inodes = ctx.getTypedRuleContexts(crmlParser.IdContext);
    if (!tnodes.length || !inodes.length) return;
    const typeName = tnodes[0].getText().trim();
    // Raw name may include leading '(' or '{' from constructor syntax.
    let rawName = inodes[0].getText().trim();
    rawName = rawName.replace(/^[\(\{]+/, '').replace(/[\)\}]+$/, '');

    // Try to extract ident parameter from argument list, if present.
    let argsText = '';
    const argCtx = ctx.getTypedRuleContext(crmlParser.Arg_listContext, 0);
    if (argCtx) argsText = this.tokens.getText(argCtx).trim();
    let instName = rawName;
    if (argsText) {
      const m = argsText.match(/ident\s*=\s*"([^\"]+)"/);
      if (m) instName = m[1];
    }

    // Ensure instance name uniqueness for mapping.  When the same name
    // appears multiple times for a given type, append a numeric suffix.
    const key = `${typeName}::${instName}`;
    if (!this.instanceCounts[key]) this.instanceCounts[key] = 0;
    const count = this.instanceCounts[key]++;
    const uniqueName = count > 0 ? `${instName}_${count}` : instName;

    const inst = { name: uniqueName, type: typeName };
    if (argsText) inst.args = argsText;
    this.instances.push(inst);
    this.associations.push({ source: uniqueName, target: typeName, type: 'instanceOf' });
  }
}

// Main entry point.  Parses the input CRML file and writes out a Draw.io
// diagram.  Class boxes are laid out in rows and columns, and their
// heights adjust dynamically based on the length of attribute and
// condition strings.  Instances are arranged beneath the classes.
async function main() {
  const inputFile = process.argv[2];
  if (!inputFile) {
    console.error('Usage: node instanceDiagramGeneratorWithRequirements.js <file.crml>');
    process.exit(1);
  }

  const text = fs.readFileSync(inputFile, 'utf-8');
  const chars = new InputStream(text);
  const lexer = new crmlLexer(chars);
  const tokens = new CommonTokenStream(lexer);
  tokens.fill();
  const parser = new crmlParser(tokens);
  parser.buildParseTrees = true;
  parser._errHandler = new DefaultErrorStrategy();
  parser.removeErrorListeners();
  // Suppress syntax error messages; some CRML constructs are not fully
  // supported by the grammar but we still want a partial parse tree.
  parser.addErrorListener(new (class extends antlr4.error.ErrorListener {
    syntaxError() {}
  })());

  const ast = parser.definition();
  const listener = new UMLListener(tokens);
  ParseTreeWalker.DEFAULT.walk(listener, ast);

  const { classes, instances, associations } = listener;

  // Pastel colour palette for a soft, readable diagram.  Each category
  // corresponds to a different cell type.  Conditions get their own
  // colour distinct from requirements to make them stand out.
  const pastelColors = {
    class:       { fill: '#AEC6CF', stroke: '#888888' },
    header:      { fill: '#AEC6CF', stroke: '#888888' },
    variable:    { fill: '#E8DAEF', stroke: '#888888' },
    requirement: { fill: '#FFDAC1', stroke: '#888888' },
    condition:   { fill: '#FFE4B5', stroke: '#888888' },
    method:      { fill: '#F4C2C2', stroke: '#888888' },
    instance:    { fill: '#FFF5BA', stroke: '#888888' }
  };

  // Layout constants.  Base cell height and width are used for a single
  // line of text.  The width stays fixed but heights scale with the
  // amount of content per cell.  Gaps define spacing between class boxes
  // and instances in the diagram.
  const wCls = 240;
  const hHdr = 30;
  const baseCellH = 20;
  const hMth = 20;
  const gapX = 80;
  const gapY = 120;
  const colsCls = Math.max(1, Math.ceil(Math.sqrt(classes.length)));
  const colsInst = Math.max(1, Math.ceil(Math.sqrt(instances.length)));

  // Compute per‑class cell heights based on text length.  We assume a
  // rough character width to approximate how many lines a given string
  // will take within the fixed class width.  At 240px width and a
  // default font around 8–9px per character, using 35 characters per
  // line yields sensible wrapping.  Attribute labels and conditions
  // longer than one line result in taller cells.  This prevents text
  // overflow within class boxes.
  const charsPerLine = 35;
  const classCellHeights = classes.map((cls) => {
    const cellHeights = [];
    cls.attributes.forEach((a) => {
      if (/Requirement/i.test(a.type)) {
        // Requirement name cell height
        const nameLabel = `${a.name}: ${a.type}`;
        const nameLines = Math.max(1, Math.ceil(nameLabel.length / charsPerLine));
        cellHeights.push(nameLines * baseCellH);
        // Condition cell height
        const cond = a.condition || '';
        const condLines = Math.max(1, Math.ceil(cond.length / charsPerLine));
        cellHeights.push(condLines * baseCellH);
      } else {
        const label = `${a.name}: ${a.type}`;
        const lines = Math.max(1, Math.ceil(label.length / charsPerLine));
        cellHeights.push(lines * baseCellH);
      }
    });
    return cellHeights;
  });

  // Calculate row heights by summing header, attribute cells and methods.
  const rowHeights = [];
  classes.forEach((cls, idx) => {
    const row = Math.floor(idx / colsCls);
    // Sum of attribute cell heights
    const cells = classCellHeights[idx] || [];
    const attHeight = cells.reduce((acc, h) => acc + h, 0);
    const height = hHdr + attHeight + cls.methods.length * hMth;
    rowHeights[row] = Math.max(rowHeights[row] || 0, height);
  });

  // Compute vertical offsets for each row of classes.  Start with a
  // margin at the top and add row heights plus gaps.
  const rowOffsets = [];
  let yAccum = 60;
  rowHeights.forEach((h, i) => {
    rowOffsets[i] = yAccum;
    yAccum += h + gapY;
  });

  // Determine where to place instance ellipses relative to the last
  // classes.  They start after the bottom of the final class row.
  const classesBottom = rowOffsets.length
    ? rowOffsets[rowOffsets.length - 1] + rowHeights[rowHeights.length - 1]
    : 60;
  const instGapY = 40;
  const instTop = classesBottom + gapY;

  // Prepare XML document.  We generate an mxGraphModel with a root
  // containing all cells.  Each cell is given a unique incremental
  // identifier.  The id mapping tracks the relationship between class
  // names/instance names and their cell ids so that edges can be
  // connected correctly later.
  let xml = '<?xml version="1.0" encoding="UTF-8"?>\n';
  xml += '<mxfile host="app.diagrams.net">\n';
  xml += `  <diagram id="d${Date.now()}" name="UML-ClassDiagram">\n`;
  xml += '    <mxGraphModel grid="1"><root>\n';
  xml += '      <mxCell id="0"/>\n';
  xml += '      <mxCell id="1" parent="0"/>\n';

  let idCtr = 2;
  const pos = {};
  const nextId = () => `${idCtr++}`;

  // Render class boxes with dynamic heights.  For each class we create
  // a container cell, a header cell, then attribute and condition cells
  // using the precalculated heights.  Vertical positions inside the
  // class are determined by accumulating cell heights.  We record
  // positions for the class name to attach association edges.
  classes.forEach((cls, idx) => {
    const col = idx % colsCls;
    const row = Math.floor(idx / colsCls);
    const x = 60 + col * (wCls + gapX);
    const y = rowOffsets[row];
    const cid = nextId();
    pos[cls.name] = cid;

    // Total height is header + sum(cell heights) + method heights.
    const cells = classCellHeights[idx] || [];
    const attHeight = cells.reduce((acc, h) => acc + h, 0);
    const totalH = hHdr + attHeight + cls.methods.length * hMth;
    xml += `      <mxCell id="${cid}" style="umlClass;html=1;whiteSpace=wrap;rounded=1;strokeColor=${pastelColors.class.stroke};fillColor=${pastelColors.class.fill};" vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="${x}" y="${y}" width="${wCls}" height="${totalH}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';

    // Header cell
    const hid = nextId();
    const headerLabel = escapeXml(`<b>${cls.name}</b>`);
    xml += `      <mxCell id="${hid}" value="${headerLabel}" style="text;html=1;whiteSpace=wrap;verticalAlign=middle;align=center;fillColor=${pastelColors.header.fill};strokeColor=${pastelColors.header.stroke};" vertex="1" parent="${cid}">\n`;
    xml += `        <mxGeometry y="0" width="${wCls}" height="${hHdr}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';

    // Render attributes and conditions.  Keep track of cumulative
    // vertical offset for each cell inside the class.  Use the
    // precalculated heights to position and size each cell.
    let offsetY = hHdr;
    let cellHeightIndex = 0;
    cls.attributes.forEach((a) => {
      if (/Requirement/i.test(a.type)) {
        // Requirement name
        const rid = nextId();
        const rLabel = escapeXml(`${a.name}: ${a.type}`);
        const reqHeight = classCellHeights[idx][cellHeightIndex++];
        xml += `      <mxCell id="${rid}" value="${rLabel}" style="text;html=1;whiteSpace=wrap;verticalAlign=middle;align=left;fillColor=${pastelColors.requirement.fill};strokeColor=${pastelColors.requirement.stroke};" vertex="1" parent="${cid}">\n`;
        xml += `        <mxGeometry y="${offsetY}" width="${wCls}" height="${reqHeight}" as="geometry"/>\n`;
        xml += '      </mxCell>\n';
        offsetY += reqHeight;
        // Condition
        const cid2 = nextId();
        const condLabel = escapeXml(a.condition);
        const condHeight = classCellHeights[idx][cellHeightIndex++];
        xml += `      <mxCell id="${cid2}" value="${condLabel}" style="text;html=1;whiteSpace=wrap;verticalAlign=top;align=left;fillColor=${pastelColors.condition.fill};strokeColor=${pastelColors.condition.stroke};" vertex="1" parent="${cid}">\n`;
        xml += `        <mxGeometry y="${offsetY}" width="${wCls}" height="${condHeight}" as="geometry"/>\n`;
        xml += '      </mxCell>\n';
        offsetY += condHeight;
      } else {
        // Normal variable
        const vid = nextId();
        const vLabel = escapeXml(`${a.name}: ${a.type}`);
        const vHeight = classCellHeights[idx][cellHeightIndex++];
        xml += `      <mxCell id="${vid}" value="${vLabel}" style="text;html=1;whiteSpace=wrap;verticalAlign=middle;align=left;fillColor=${pastelColors.variable.fill};strokeColor=${pastelColors.variable.stroke};" vertex="1" parent="${cid}">\n`;
        xml += `        <mxGeometry y="${offsetY}" width="${wCls}" height="${vHeight}" as="geometry"/>\n`;
        xml += '      </mxCell>\n';
        offsetY += vHeight;
      }
    });
    // Methods
    cls.methods.forEach((m, k) => {
      const mid = nextId();
      const methLabel = escapeXml(m.name);
      xml += `      <mxCell id="${mid}" value="${methLabel}" style="text;html=1;whiteSpace=wrap;verticalAlign=middle;align=left;fillColor=${pastelColors.method.fill};strokeColor=${pastelColors.method.stroke};" vertex="1" parent="${cid}">\n`;
      xml += `        <mxGeometry y="${offsetY}" width="${wCls}" height="${hMth}" as="geometry"/>\n`;
      xml += '      </mxCell>\n';
      offsetY += hMth;
    });
  });

  // Render instances.  We size the ellipses at half the class width and
  // a fixed height equal to the header height.  Instances are laid out
  // in a grid similar to classes but starting lower on the canvas.
  instances.forEach((inst, i) => {
    const col = i % colsInst;
    const row = Math.floor(i / colsInst);
    const x = 60 + col * ((wCls / 2) + gapX);
    const y = instTop + row * (hHdr + instGapY);
    const iid = nextId();
    pos[inst.name] = iid;
    const instLabel = escapeXml(`<i>${inst.name}: ${inst.type}</i>`);
    xml += `      <mxCell id="${iid}" value="${instLabel}" style="shape=ellipse;html=1;whiteSpace=wrap;rounded=1;strokeColor=${pastelColors.instance.stroke};fillColor=${pastelColors.instance.fill};" vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="${x}" y="${y}" width="${wCls / 2}" height="${hHdr}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';
  });

  // Render associations.  Class attributes use a diamond arrow and
  // instances use a dashed open arrow to indicate instantiation.  If
  // either the source or target id is missing (due to a parse error),
  // the edge is skipped to prevent invalid XML.
  associations.forEach((rel) => {
    const srcId = pos[rel.source];
    const tgtId = pos[rel.target];
    if (!srcId || !tgtId) return;
    const eid = nextId();
    const style = rel.type === 'association'
      ? `edgeStyle=orthogonalEdgeStyle;endArrow=diamond;endFill=1;strokeColor=${pastelColors.class.stroke};`
      : `edgeStyle=orthogonalEdgeStyle;endArrow=open;dashed=1;strokeColor=${pastelColors.class.stroke};`;
    xml += `      <mxCell id="${eid}" style="${style}" edge="1" parent="1" source="${srcId}" target="${tgtId}">\n`;
    xml += '        <mxGeometry relative="1" as="geometry"/>\n';
    xml += '      </mxCell>\n';
  });

  xml += '    </root></mxGraphModel>\n';
  xml += '  </diagram>\n';
  xml += '</mxfile>';

  const outFile = inputFile.replace(/\.crml$/, '') + '_class_object4.drawio';
  fs.writeFileSync(outFile, xml, 'utf-8');
  console.log(`UML diagram with requirements written to ${outFile}`);
}

main().catch((err) => {
  console.error(err);
});
