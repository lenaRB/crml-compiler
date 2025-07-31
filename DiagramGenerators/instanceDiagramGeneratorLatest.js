#!/usr/bin/env node
import antlr4 from 'antlr4';
import fs from 'fs';
import path from 'path';
import { fileURLToPath, pathToFileURL } from 'url';

const { InputStream, CommonTokenStream, tree, error } = antlr4;
const { DefaultErrorStrategy } = error;
const { ParseTreeWalker } = tree;

// Suppress full-context error hook
if (!DefaultErrorStrategy.prototype.reportAttemptingFullContext) {
  DefaultErrorStrategy.prototype.reportAttemptingFullContext = function() {};
}

// Utility: escape text for XML attributes
function escapeXml(s) {
  return s
    .replace(/&/g, '&amp;')
    .replace(/"/g, '&quot;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;');
}

// Dynamic imports of ANTLR-generated modules
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const crmlLexer = (await import(pathToFileURL(path.join(__dirname, 'antlr/crmlLexer.js')).href)).default;
const crmlParser = (await import(pathToFileURL(path.join(__dirname, 'antlr/crmlParser.js')).href)).default;
const crmlListener = (await import(pathToFileURL(path.join(__dirname, 'antlr/crmlListener.js')).href)).default;

// Listener to extract classes, methods, instances, and relationships
class UMLListener extends crmlListener {
  constructor(tokens) {
    super();
    this.tokens = tokens;
    this.classes = [];
    this.instances = [];
    this.associations = [];
  }

  // Capture class definitions
  exitClass_def(ctx) {
    const className = ctx.id(0).getText();
    const clazz = { name: className, attributes: [], methods: [] };
    this.classes.push(clazz);

    // Attributes
    ctx.class_var_def().forEach(cvar => {
      const vctx = cvar.var_def();
      if (!vctx) return;
      const tnodes = vctx.getTypedRuleContexts(crmlParser.TypeContext);
      const inodes = vctx.getTypedRuleContexts(crmlParser.IdContext);
      if (!tnodes.length || !inodes.length) return;
      const typeName = tnodes[0].getText().trim();
      const varName = inodes[0].getText().trim();
      clazz.attributes.push({ name: varName, type: typeName });
      this.associations.push({ source: className, target: typeName, type: 'association' });
    });
  }

  // Capture methods
  exitOperator_def(ctx) {
    if (!this.classes.length) return;
    const clazz = this.classes[this.classes.length - 1];
    const sig = this.tokens.getText(ctx).trim();
    clazz.methods.push({ name: sig, params: '' });
  }

  // Capture top-level instances
  exitVar_def(ctx) {
    if (!ctx.parentCtx || ctx.parentCtx.ruleIndex !== crmlParser.RULE_element_def) return;
    const tnodes = ctx.getTypedRuleContexts(crmlParser.TypeContext);
    const inodes = ctx.getTypedRuleContexts(crmlParser.IdContext);
    if (!tnodes.length || !inodes.length) return;
    const typeName = tnodes[0].getText().trim();
    const varName = inodes[0].getText().trim();
    const inst = { name: varName, type: typeName };
    const argCtx = ctx.getTypedRuleContext(crmlParser.Arg_listContext, 0);
    if (argCtx) inst.args = this.tokens.getText(argCtx).trim();
    this.instances.push(inst);
    this.associations.push({ source: varName, target: typeName, type: 'instanceOf' });
  }
}

// Main: parse and generate Draw.io UML class+object diagram
async function main() {
  const inputFile = process.argv[2];
  if (!inputFile) {
    console.error('Usage: node umlDiagramGenerator.js <file.crml>');
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
  // Silence syntax error messages emitted by the parser.  Some CRML
  // constructs (e.g. curly brace initialisers) are not covered by the
  // grammar and can trigger parse errors.  We add a no‑op error listener
  // and remove default listeners to avoid noisy console output while still
  // building a partial parse tree.
  parser.removeErrorListeners();
  class SilentErrorListener extends antlr4.error.ErrorListener {
    syntaxError(recognizer, offendingSymbol, line, column, msg, e) {
      // intentionally left blank to suppress messages
    }
  }
  parser.addErrorListener(new SilentErrorListener());
  const tree = parser.definition();

  const listener = new UMLListener(tokens);
  ParseTreeWalker.DEFAULT.walk(listener, tree);

  const { classes, instances, associations } = listener;

  // Pastel color palette used to style different UML elements. Each key holds a
  // fill and stroke colour. These colours provide a soft, pleasing look.
  const pastelColors = {
    class:       { fill: '#AEC6CF', stroke: '#888888' }, // pastel blue for class containers
    header:      { fill: '#AEC6CF', stroke: '#888888' }, // pastel blue for class headers
    variable:    { fill: '#E8DAEF', stroke: '#888888' }, // pastel purple for normal variables
    requirement: { fill: '#FFDAC1', stroke: '#888888' }, // pastel peach for requirements
    method:      { fill: '#F4C2C2', stroke: '#888888' }, // pastel pink for methods
    instance:    { fill: '#FFF5BA', stroke: '#888888' }  // pastel yellow for instances
  };

  // Layout
  const wCls = 240, hHdr = 30, hAtt = 20, hMth = 20;
  const gapX = 80, gapY = 120;
  const colsCls = Math.ceil(Math.sqrt(classes.length));
  const colsInst = Math.ceil(Math.sqrt(instances.length));

  // Compute per-row maximum heights to align classes neatly. Without this,
  // classes in the same row could have differing heights, leading to
  // misaligned diagrams. We compute the tallest class in each row and
  // accumulate vertical offsets accordingly.
  const rowHeights = [];
  classes.forEach((cls, idx) => {
    const row = Math.floor(idx / colsCls);
    const height = hHdr + cls.attributes.length * hAtt + cls.methods.length * hMth;
    rowHeights[row] = Math.max(rowHeights[row] || 0, height);
  });
  const rowOffsets = [];
  let yAccum = 60;
  rowHeights.forEach((h, i) => {
    rowOffsets[i] = yAccum;
    yAccum += h + gapY;
  });
  // Determine the vertical starting point for instances after the classes
  const classesBottom = rowOffsets.length
    ? rowOffsets[rowOffsets.length - 1] + rowHeights[rowHeights.length - 1]
    : 60;
  const instGapY = 40; // vertical gap between instance rows
  const instTop = classesBottom + gapY;

  // XML header
  let xml = '<?xml version="1.0" encoding="UTF-8"?>\n';
  xml += '<mxfile host="app.diagrams.net">\n';
  xml += `  <diagram id="d${Date.now()}" name="UML-ClassDiagram">\n`;
  xml += '    <mxGraphModel grid="1"><root>\n';
  xml += '      <mxCell id="0"/>\n';
  xml += '      <mxCell id="1" parent="0"/>\n';

  let idCtr = 2;
  const pos = {};
  const nextId = () => `${idCtr++}`;

  // Render classes
  classes.forEach((cls, i) => {
    const col = i % colsCls;
    const row = Math.floor(i / colsCls);
    const x = 60 + col * (wCls + gapX);
    const y = rowOffsets[row];
    const cid = nextId(); pos[cls.name] = cid;
    const totalH = hHdr + cls.attributes.length * hAtt + cls.methods.length * hMth;
    xml += `      <mxCell id="${cid}" style="umlClass;html=1;rounded=1;strokeColor=${pastelColors.class.stroke};fillColor=${pastelColors.class.fill};" vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="${x}" y="${y}" width="${wCls}" height="${totalH}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';
    // Header
    const hid = nextId();
    const headerLabel = escapeXml(`<b>${cls.name}</b>`);
    xml += `      <mxCell id="${hid}" value="${headerLabel}" style="text;html=1;verticalAlign=middle;align=center;fillColor=${pastelColors.header.fill};strokeColor=${pastelColors.header.stroke};" vertex="1" parent="${cid}">\n`;
    xml += `        <mxGeometry y="0" width="${wCls}" height="${hHdr}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';
    // Attributes
    cls.attributes.forEach((a, j) => {
      const aid = nextId();
      const attrLabel = escapeXml(`${a.name}: ${a.type}`);
      // Determine colour based on whether this attribute is a requirement (type contains 'Requirement')
      const isReq = /Requirement/i.test(a.type);
      const color = isReq ? pastelColors.requirement : pastelColors.variable;
      xml += `      <mxCell id="${aid}" value="${attrLabel}" style="text;html=1;verticalAlign=middle;align=left;fillColor=${color.fill};strokeColor=${color.stroke};" vertex="1" parent="${cid}">\n`;
      xml += `        <mxGeometry y="${hHdr + j * hAtt}" width="${wCls}" height="${hAtt}" as="geometry"/>\n`;
      xml += '      </mxCell>\n';
    });
    // Methods
    cls.methods.forEach((m, k) => {
      const mid = nextId();
      const methLabel = escapeXml(m.name);
      xml += `      <mxCell id="${mid}" value="${methLabel}" style="text;html=1;verticalAlign=middle;align=left;fillColor=${pastelColors.method.fill};strokeColor=${pastelColors.method.stroke};" vertex="1" parent="${cid}">\n`;
      xml += `        <mxGeometry y="${hHdr + cls.attributes.length * hAtt + k * hMth}" width="${wCls}" height="${hMth}" as="geometry"/>\n`;
      xml += '      </mxCell>\n';
    });
  });

  // Render instances
  instances.forEach((inst, i) => {
    const col = i % colsInst;
    const row = Math.floor(i / colsInst);
    // Position instances under the classes area with their own spacing
    const x = 60 + col * ((wCls / 2) + gapX);
    const y = instTop + row * (hHdr + instGapY);
    const iid = nextId(); pos[inst.name] = iid;
    const instLabel = escapeXml(`<i>${inst.name}: ${inst.type}</i>`);
    xml += `      <mxCell id="${iid}" value="${instLabel}" style="shape=ellipse;html=1;rounded=1;strokeColor=${pastelColors.instance.stroke};fillColor=${pastelColors.instance.fill};" vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="${x}" y="${y}" width="${wCls/2}" height="${hHdr}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';
  });

  // Render associations
  associations.forEach(rel => {
    const eid = nextId();
    const style = rel.type === 'association'
      ? `edgeStyle=orthogonalEdgeStyle;endArrow=diamond;endFill=1;strokeColor=${pastelColors.class.stroke};`
      : `edgeStyle=orthogonalEdgeStyle;endArrow=open;dashed=1;strokeColor=${pastelColors.class.stroke};`;
    xml += `      <mxCell id="${eid}" style="${style}" edge="1" parent="1" source="${pos[rel.source]}" target="${pos[rel.target]}">\n`;
    xml += '        <mxGeometry relative="1" as="geometry"/>\n';
    xml += '      </mxCell>\n';
  });

  xml += '    </root></mxGraphModel>\n';
  xml += '  </diagram>\n';
  xml += '</mxfile>';

  const outFile = inputFile.replace(/\.crml$/, '') + '_class_object4.drawio';
  fs.writeFileSync(outFile, xml, 'utf-8');
  console.log(`UML diagram written to ${outFile}`);
}

main().catch(err => console.error(err));