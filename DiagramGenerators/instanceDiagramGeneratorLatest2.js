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

// Listener to extract classes, methods, instances, and relationships, including requirement conditions
class UMLListener extends crmlListener {
  constructor(tokens) {
    super();
    this.tokens = tokens;
    this.classes = [];
    this.instances = [];
    this.associations = [];
  }

  // Capture class definitions and requirement conditions
  exitClass_def(ctx) {
    const className = ctx.id(0).getText();
    const clazz = { name: className, attributes: [], methods: [] };
    this.classes.push(clazz);

    ctx.class_var_def().forEach(cvar => {
      const vctx = cvar.var_def();
      if (!vctx) return;
      const tnodes = vctx.getTypedRuleContexts(crmlParser.TypeContext);
      const inodes = vctx.getTypedRuleContexts(crmlParser.IdContext);
      if (!tnodes.length || !inodes.length) return;
      const typeName = tnodes[0].getText().trim();
      const varName = inodes[0].getText().trim();

      // Capture requirement condition if present
      let condition = '';
      const expCtx = vctx.getTypedRuleContext(crmlParser.ExpContext, 0);
      if (expCtx) {
        condition = this.tokens.getText(expCtx).trim();
      }

      clazz.attributes.push({ name: varName, type: typeName, condition });
      this.associations.push({ source: className, target: typeName, type: 'association' });
    });
  }

  // Capture methods
  exitOperator_def(ctx) {
    if (!this.classes.length) return;
    const clazz = this.classes[this.classes.length - 1];
    const sig = this.tokens.getText(ctx).trim();
    clazz.methods.push({ name: sig });
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

// Main: parse and generate Draw.io UML class+object diagram with conditions for requirements
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
  parser.addErrorListener(new (class extends antlr4.error.ErrorListener {
    syntaxError() {}
  })());

  const tree = parser.definition();
  const listener = new UMLListener(tokens);
  ParseTreeWalker.DEFAULT.walk(listener, tree);

  const { classes, instances, associations } = listener;

  // Pastel color palette
  const pastelColors = {
    class:       { fill: '#AEC6CF', stroke: '#888888' },
    header:      { fill: '#AEC6CF', stroke: '#888888' },
    variable:    { fill: '#E8DAEF', stroke: '#888888' },
    requirement: { fill: '#FFDAC1', stroke: '#888888' },
    condition:   { fill: '#FFE4B5', stroke: '#888888' },
    method:      { fill: '#F4C2C2', stroke: '#888888' },
    instance:    { fill: '#FFF5BA', stroke: '#888888' }
  };

  // Layout constants
  const wCls = 240, hHdr = 30, hCell = 20, hMth = 20;
  const gapX = 80, gapY = 120;
  const colsCls = Math.ceil(Math.sqrt(classes.length));
  const colsInst = Math.ceil(Math.sqrt(instances.length));

  // Compute row heights accounting for requirement cells
  const rowHeights = classes.map((cls) => {
    const totalCells = cls.attributes.reduce((sum, a) => sum + (/Requirement/i.test(a.type) ? 2 : 1), 0);
    return hHdr + totalCells * hCell + cls.methods.length * hMth;
  });
  const rowOffsets = [];
  let yAccum = 60;
  rowHeights.forEach((h) => { rowOffsets.push(yAccum); yAccum += h + gapY; });

  const classesBottom = rowOffsets[rowOffsets.length - 1] + rowHeights[rowHeights.length - 1] || 60;
  const instGapY = 40;
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

    const totalCells = cls.attributes.reduce((sum, a) => sum + (/Requirement/i.test(a.type) ? 2 : 1), 0);
    const totalH = hHdr + totalCells * hCell + cls.methods.length * hMth;

    xml += `      <mxCell id="${cid}" style="umlClass;html=1;rounded=1;strokeColor=${pastelColors.class.stroke};fillColor=${pastelColors.class.fill};" vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="${x}" y="${y}" width="${wCls}" height="${totalH}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';

    // Header
    const hid = nextId();
    const headerLabel = escapeXml(`<b>${cls.name}</b>`);
    xml += `      <mxCell id="${hid}" value="${headerLabel}" style="text;html=1;verticalAlign=middle;align=center;fillColor=${pastelColors.header.fill};strokeColor=${pastelColors.header.stroke};" vertex="1" parent="${cid}">\n`;
    xml += `        <mxGeometry y="0" width="${wCls}" height="${hHdr}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';

    // Attributes & conditions
    let cellIndex = 0;
    cls.attributes.forEach((a) => {
      const isReq = /Requirement/i.test(a.type);
      const baseY = hHdr + cellIndex * hCell;

      if (isReq) {
        // Requirement name
        const rid = nextId();
        const rLabel = escapeXml(`${a.name}: ${a.type}`);
        xml += `      <mxCell id="${rid}" value="${rLabel}" style="text;html=1;verticalAlign=middle;align=left;fillColor=${pastelColors.requirement.fill};strokeColor=${pastelColors.requirement.stroke};" vertex="1" parent="${cid}">\n`;
        xml += `        <mxGeometry y="${baseY}" width="${wCls}" height="${hCell}" as="geometry"/>\n`;
        xml += '      </mxCell>\n';
        cellIndex++;

        // Condition
        const cid2 = nextId();
        const condLabel = escapeXml(a.condition);
        xml += `      <mxCell id="${cid2}" value="${condLabel}" style="text;html=1;verticalAlign=top;align=left;fillColor=${pastelColors.condition.fill};strokeColor=${pastelColors.condition.stroke};" vertex="1" parent="${cid}">\n`;
        xml += `        <mxGeometry y="${hHdr + cellIndex * hCell}" width="${wCls}" height="${hCell}" as="geometry"/>\n`;
        xml += '      </mxCell>\n';
        cellIndex++;
      } else {
        // Normal variable
        const vid = nextId();
        const vLabel = escapeXml(`${a.name}: ${a.type}`);
        xml += `      <mxCell id="${vid}" value="${vLabel}" style="text;html=1;verticalAlign=middle;align=left;fillColor=${pastelColors.variable.fill};strokeColor=${pastelColors.variable.stroke};" vertex="1" parent="${cid}">\n`;
        xml += `        <mxGeometry y="${baseY}" width="${wCls}" height="${hCell}" as="geometry"/>\n`;
        xml += '      </mxCell>\n';
        cellIndex++;
      }
    });

    // Methods
    cls.methods.forEach((m, k) => {
      const mid = nextId();
      const methLabel = escapeXml(m.name);
      const my = hHdr + totalCells * hCell + k * hMth;
      xml += `      <mxCell id="${mid}" value="${methLabel}" style="text;html=1;verticalAlign=middle;align=left;fillColor=${pastelColors.method.fill};strokeColor=${pastelColors.method.stroke};" vertex="1" parent="${cid}">\n`;
      xml += `        <mxGeometry y="${my}" width="${wCls}" height="${hMth}" as="geometry"/>\n`;
      xml += '      </mxCell>\n';
    });
  });

  // Render instances
  instances.forEach((inst, i) => {
    const col = i % colsInst;
    const row = Math.floor(i / colsInst);
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
  console.log(`UML diagram with requirements written to ${outFile}`);
}

main().catch(err => console.error(err));
