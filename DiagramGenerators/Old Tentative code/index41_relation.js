#!/usr/bin/env node
import antlr4 from 'antlr4';
import fs      from 'fs';
import path    from 'path';
import { fileURLToPath } from 'url';

// ─── unpack what we need ─────────────────────────────────────────────
const { InputStream, CommonTokenStream, tree, error } = antlr4;
const { BailErrorStrategy, DefaultErrorStrategy }   = error;
const { ParseTreeWalker }                           = tree;

// ─── patch error‐strategies so they implement the missing hook ───────
[DefaultErrorStrategy, BailErrorStrategy].forEach(Strategy => {
  if (Strategy && !Strategy.prototype.reportAttemptingFullContext) {
    Strategy.prototype.reportAttemptingFullContext = function() {};
  }
});

// ─── locate ANTLR‐generated files ────────────────────────────────────
const __filename = fileURLToPath(import.meta.url);
const __dirname  = path.dirname(__filename);

// ─── dynamically import parser/lexer/listener ─────────────────────────
import { pathToFileURL } from 'url';
const crmlLexer    = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlLexer.js')).href)).default;
const crmlParser   = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlParser.js')).href)).default;
const crmlListener = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlListener.js')).href)).default;

class RequirementsListener extends crmlListener {
  constructor() {
    super();
    this.modelName = null; // no longer used for header
  }
  enterDefinition(ctx) {
    this.modelName = ctx.id().getText();
  }
}

async function main() {
  const inputFile = process.argv[2];
  if (!inputFile) {
    console.error('Usage: node index42.js <file.crml>');
    process.exit(1);
  }

  // 1) read & lex
  const text   = fs.readFileSync(inputFile, 'utf-8');
  const chars  = new InputStream(text);
  const lexer  = new crmlLexer(chars);
  const tokens = new CommonTokenStream(lexer);
  tokens.fill();

  // 2) parse
  const parser = new crmlParser(tokens);
  parser.buildParseTrees = true;
  parser._errHandler      = new DefaultErrorStrategy();
  const treeRoot = parser.definition();

  // 3) walk (modelName kept but not used in header)
  const listener = new RequirementsListener();
  ParseTreeWalker.DEFAULT.walk(listener, treeRoot);

  // 4) extract object instances
  const objDeclRegex = /(\w+)\s+(\w+)\s+is\s+new\s+\1\s*;/g;
  const objects = [];
  let match;
  while ((match = objDeclRegex.exec(text)) !== null) {
    objects.push({ type: match[1], name: match[2], index: match.index });
  }

  // 5) extract requirements
  const reqRegex = /Requirement\s+(\w+)\s+is\s+([^;]+);/g;
  const requirements = [];
  while ((match = reqRegex.exec(text)) !== null) {
    requirements.push({ name: match[1], expr: match[2].trim(), index: match.index });
  }

  // 6) group reqs under each object
  const objReqs = {};
  objects.forEach(o => { objReqs[o.name] = []; });
  requirements.forEach(req => {
    let owner = null;
    for (const o of objects) {
      if (o.index < req.index && (!owner || o.index > owner.index)) {
        owner = o;
      }
    }
    if (owner) objReqs[owner.name].push(req);
  });

  // 7) extract class inheritance
  const classRegex = /class\s+(\w+)\s+is\s*\{[\s\S]*?\}(?:\s+extends\s+(\w+))?;/g;
  const classes = [];
  while ((match = classRegex.exec(text)) !== null) {
    if (match[2]) classes.push({ name: match[1], superName: match[2] });
  }

  // 8) extract "contains" and "uses" relationships
  const containsRegex = /class\s+(\w+)\s+is\s*\{[\s\S]*?(\w+)\s+(\w+)\s+is\s+contains\s*;/g;
  const usesRegex = /class\s+(\w+)\s+is\s*\{[\s\S]*?(\w+)\s+(\w+)\s+is\s+uses\s*;/g;
  const containsRelations = [];
  const usesRelations = [];
  while ((match = containsRegex.exec(text)) !== null) {
    containsRelations.push({ ownerClass: match[1], containedClass: match[2], containedName: match[3] });
  }
  while ((match = usesRegex.exec(text)) !== null) {
    usesRelations.push({ ownerClass: match[1], usedClass: match[2], usedName: match[3] });
  }

  // 9) prepare edges for inheritance, contains, and uses
  const arrowEdges = [];
  // Inheritance edges
  classes.forEach(c => {
    const sub = objects.filter(o => o.type === c.name);
    const sup = objects.filter(o => o.type === c.superName);
    if (sub.length && sup.length) {
      arrowEdges.push({ source: `table_${sub[0].name}`, target: `table_${sup[0].name}`, type: 'inheritance' });
    }
  });
  // Contains edges
  containsRelations.forEach(r => {
    const owner = objects.filter(o => o.type === r.ownerClass);
    const contained = objects.filter(o => o.type === r.containedClass);
    if (owner.length && contained.length) {
      arrowEdges.push({ source: `table_${owner[0].name}`, target: `table_${contained[0].name}`, type: 'contains' });
    }
  });
  // Uses edges
  usesRelations.forEach(r => {
    const owner = objects.filter(o => o.type === r.ownerClass);
    const used = objects.filter(o => o.type === r.usedClass);
    if (owner.length && used.length) {
      arrowEdges.push({ source: `table_${owner[0].name}`, target: `table_${used[0].name}`, type: 'uses' });
    }
  });

  // 10) layout settings
  const headerH    = 40;
  const objRowH    = 30;
  const reqHdrH    = 30;
  const reqTitleH  = 20;
  const reqExprH   = 40;
  const tableW     = 250;
  const x0         = 60;
  const y0         = 50;
  const gapX       = 50;

  // 11) start Draw.io XML
  const diagramId = 'd' + Date.now();
  let xml = `<?xml version="1.0" encoding="UTF-8"?>\n`;
  xml    += `<mxfile host="app.diagrams.net">\n`;
  xml    += `  <diagram id="${diagramId}" name="Page-1">\n`;
  xml    += `    <mxGraphModel dx="800" dy="600" grid="1"><root>\n`;
  xml    += `      <mxCell id="0"/>\n`;
  xml    += `      <mxCell id="1" parent="0"/>\n`;

  let rowId = 0;

  // helpers
  function addRow(tableId, h, y) {
    const rid = `r${rowId}`;
    xml += `      <mxCell id="${rid}" style="shape=tableRow;html=1;" vertex="1" parent="${tableId}">\n`;
    xml += `        <mxGeometry y="${y}" width="${tableW}" height="${h}" as="geometry"/>\n`;
    xml += `      </mxCell>\n`;
    rowId++;
    return rid;
  }
  function addCell(parentId, h, txt, opts = {}) {
    const { bold=false, align='left', bgColor, fontColor } = opts;
    let lbl = bold ? `<b>${txt}</b>` : txt;
    if (fontColor) lbl = `<font color="${fontColor}">${lbl}</font>`;
    const esc = lbl.replace(/&/g,'&amp;').replace(/"/g,'&quot;')
                   .replace(/</g,'&lt;').replace(/>/g,'&gt;');
    let style = `html=1;verticalAlign=middle;overflow=visible;align=${align};strokeColor=none;strokeWidth=0;`;
    if (bgColor) style += `fillColor=${bgColor};`;
    xml += `      <mxCell id="c${rowId-1}" value="${esc}" style="${style}" vertex="1" parent="${parentId}">\n`;
    xml += `        <mxGeometry width="${tableW}" height="${h}" as="geometry"/>\n`;
    xml += `      </mxCell>\n`;
  }

  // 12) render tables
  objects.forEach((obj, idx) => {
    const reqs   = objReqs[obj.name] || [];
    const tableH = headerH + objRowH + reqHdrH + reqs.length*(reqTitleH+reqExprH);
    const tableId= `table_${obj.name}`;
    const xPos   = x0 + idx*(tableW + gapX);

    xml += `      <mxCell id="${tableId}" style="shape=table;startSize=20;container=1;recursiveResize=0;collapsible=0;` +
           `tableLayout=fixed;html=1;overflow=visible;strokeColor=#000000;strokeWidth=1;"` +
           ` vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="${xPos}" y="${y0}" width="${tableW}" height="${tableH}" as="geometry"/>\n`;
    xml += `      </mxCell>\n`;

    let currentY = 0;

    // class name header (light pink)
    let pid = addRow(tableId, headerH, currentY);
    currentY += headerH;
    addCell(pid, headerH, obj.type, { bold: true, align: 'center', bgColor: '#F8BBD0' });

    // instance name
    pid = addRow(tableId, objRowH, currentY);
    currentY += objRowH;
    addCell(pid, objRowH, obj.name);

    // "Requirements" header (light green)
    pid = addRow(tableId, reqHdrH, currentY);
    currentY += reqHdrH;
    addCell(pid, reqHdrH, 'Requirements', { bold: true, align: 'center', bgColor: '#DCEDC8' });

    // each requirement
    reqs.forEach(r => {
      pid = addRow(tableId, reqTitleH, currentY);
      currentY += reqTitleH;
      addCell(pid, reqTitleH, `Requirement ${r.name}`, { bold: true, align: 'center', bgColor: '#BBDEFB' });

      pid = addRow(tableId, reqExprH, currentY);
      currentY += reqExprH;
      addCell(pid, reqExprH, r.expr);
    });
  });

  // 13) draw relationship arrows
  arrowEdges.forEach((e, i) => {
    let style;
    if (e.type === 'inheritance') {
      style = `edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=0;strokeColor=#000000;`;
    } else if (e.type === 'contains') {
      style = `edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=diamond;endFill=1;strokeColor=#000000;`;
    } else if (e.type === 'uses') {
      style = `edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=open;dashed=1;strokeColor=#000000;`;
    }
    xml += `      <mxCell id="edge${i}" style="${style}" edge="1" source="${e.source}" target="${e.target}" parent="1">\n`;
    xml += `        <mxGeometry relative="1" as="geometry"/>\n`;
    xml += `      </mxCell>\n`;
  });

  // 14) close out
  xml += `    </root></mxGraphModel>\n`;
  xml += `  </diagram>\n`;
  xml += `</mxfile>`;

  // write file
  const outFile = inputFile.replace(/\.crml$/,'') + '_relationships.drawio';
  fs.writeFileSync(outFile, xml, 'utf-8');
}

main().catch(err => { console.error(err); process.exit(1); });