#!/usr/bin/env node
import antlr4 from 'antlr4';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

// ─── Unpack ANTLR dependencies ───────────────────────────────────────
const { InputStream, CommonTokenStream, tree, error } = antlr4;
const { BailErrorStrategy, DefaultErrorStrategy } = error;
const { ParseTreeWalker } = tree;

// ─── Patch error strategies ──────────────────────────────────────────
[DefaultErrorStrategy, BailErrorStrategy].forEach(Strategy => {
  if (Strategy && !Strategy.prototype.reportAttemptingFullContext) {
    Strategy.prototype.reportAttemptingFullContext = function () {};
  }
});

// ─── Locate ANTLR-generated files ────────────────────────────────────
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// ─── Dynamically import parser/lexer/listener ────────────────────────
import { pathToFileURL } from 'url';
const crmlLexer = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlLexer.js')).href)).default;
const crmlParser = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlParser.js')).href)).default;
const crmlListener = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlListener.js')).href)).default;

class RequirementsListener extends crmlListener {
  constructor() {
    super();
    this.modelName = null;
    this.objects = []; // { type, name }
    this.requirements = []; // { name, expr, owner }
    this.classes = []; // { name, superName }
    this.currentObject = null; // Track current object for requirement grouping
  }

  enterDefinition(ctx) {
    this.modelName = ctx.id().getText();
  }

  // Handle class declarations (e.g., class A is { ... } extends B;)
  enterClassDecl(ctx) {
    const className = ctx.id(0).getText();
    const superName = ctx.id(1)?.getText() || null; // Optional extends clause
    if (superName) {
      this.classes.push({ name: className, superName });
    }
  }

  // Handle object declarations (e.g., Type name is new Type;)
  enterObjDecl(ctx) {
    const type = ctx.id(0).getText();
    const name = ctx.id(1).getText();
    this.objects.push({ type, name });
    this.currentObject = name; // Set current object for subsequent requirements
  }

  // Handle requirements (e.g., Requirement req is expr;)
  enterRequirement(ctx) {
    const name = ctx.id().getText();
    const expr = ctx.expr().getText(); // Assumes expr() rule exists
    this.requirements.push({ name, expr, owner: this.currentObject });
  }

  // Reset current object when exiting object scope (if scoped)
  exitObjDecl() {
    this.currentObject = null;
  }
}

async function main() {
  const inputFile = process.argv[2];
  if (!inputFile) {
    console.error('Usage: node index42.js <file.crml>');
    process.exit(1);
  }

  // 1) Read & lex
  const text = fs.readFileSync(inputFile, 'utf-8');
  const chars = new InputStream(text);
  const lexer = new crmlLexer(chars);
  const tokens = new CommonTokenStream(lexer);
  tokens.fill();

  // 2) Parse
  const parser = new crmlParser(tokens);
  parser.buildParseTrees = true;
  parser._errHandler = new DefaultErrorStrategy();
  const treeRoot = parser.definition();

  // 3) Walk and collect data
  const listener = new RequirementsListener();
  ParseTreeWalker.DEFAULT.walk(listener, treeRoot);

  // 4) Group requirements under objects
  const objReqs = {};
  listener.objects.forEach(o => {
    objReqs[o.name] = listener.requirements.filter(r => r.owner === o.name);
  });

  // 5) Prepare inheritance edges
  const arrowEdges = [];
  listener.classes.forEach(c => {
    const sub = listener.objects.filter(o => o.type === c.name);
    const sup = listener.objects.filter(o => o.type === c.superName);
    if (sub.length && sup.length) {
      arrowEdges.push({ source: `table_${sub[0].name}`, target: `table_${sup[0].name}` });
    }
  });

  // 6) Layout settings
  const headerH = 40;
  const objRowH = 30;
  const reqHdrH = 30;
  const reqTitleH = 20;
  const reqExprH = 40;
  const tableW = 250;
  const x0 = 60;
  const y0 = 50;
  const gapX = 50;

  // 7) Start Draw.io XML
  const diagramId = 'd' + Date.now();
  let xml = `<?xml version="1.0" encoding="UTF-8"?>\n`;
  xml += `<mxfile host="app.diagrams.net">\n`;
  xml += `  <diagram id="${diagramId}" name="Page-1">\n`;
  xml += `    <mxGraphModel dx="800" dy="600" grid="1"><root>\n`;
  xml += `      <mxCell id="0"/>\n`;
  xml += `      <mxCell id="1" parent="0"/>\n`;

  let rowId = 0;

  // Helpers
  function addRow(tableId, h, y) {
    const rid = `r${rowId}`;
    xml += `      <mxCell id="${rid}" style="shape=tableRow;html=1;" vertex="1" parent="${tableId}">\n`;
    xml += `        <mxGeometry y="${y}" width="${tableW}" height="${h}" as="geometry"/>\n`;
    xml += `      </mxCell>\n`;
    rowId++;
    return rid;
  }

  function addCell(parentId, h, txt, opts = {}) {
    const { bold = false, align = 'left', bgColor, fontColor } = opts;
    let lbl = bold ? `<b>${txt}</b>` : txt;
    if (fontColor) lbl = `<font color="${fontColor}">${lbl}</font>`;
    const esc = lbl.replace(/&/g, '&amp;').replace(/"/g, '&quot;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
    let style = `html=1;verticalAlign=middle;overflow=visible;align=${align};strokeColor=none;strokeWidth=0;`;
    if (bgColor) style += `fillColor=${bgColor};`;
    xml += `      <mxCell id="c${rowId-1}" value="${esc}" style="${style}" vertex="1" parent="${parentId}">\n`;
    xml += `        <mxGeometry width="${tableW}" height="${h}" as="geometry"/>\n`;
    xml += `      </mxCell>\n`;
  }

  // 8) Render tables
  listener.objects.forEach((obj, idx) => {
    const reqs = objReqs[obj.name] || [];
    const tableH = headerH + objRowH + reqHdrH + reqs.length * (reqTitleH + reqExprH);
    const tableId = `table_${obj.name}`;
    const xPos = x0 + idx * (tableW + gapX);

    xml += `      <mxCell id="${tableId}" style="shape=table;startSize=20;container=1;recursiveResize=0;collapsible=0;` +
           `tableLayout=fixed;html=1;overflow=visible;strokeColor=#000000;strokeWidth=1;"` +
           ` vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="${xPos}" y="${y0}" width="${tableW}" height="${tableH}" as="geometry"/>\n`;
    xml += `      </mxCell>\n`;

    let currentY = 0;

    // Class name header (light pink)
    let pid = addRow(tableId, headerH, currentY);
    currentY += headerH;
    addCell(pid, headerH, obj.type, { bold: true, align: 'center', bgColor: '#F8BBD0' });

    // Instance name
    pid = addRow(tableId, objRowH, currentY);
    currentY += objRowH;
    addCell(pid, objRowH, obj.name);

    // "Requirements" header (light green)
    pid = addRow(tableId, reqHdrH, currentY);
    currentY += reqHdrH;
    addCell(pid, reqHdrH, 'Requirements', { bold: true, align: 'center', bgColor: '#DCEDC8' });

    // Each requirement
    reqs.forEach(r => {
      pid = addRow(tableId, reqTitleH, currentY);
      currentY += reqTitleH;
      addCell(pid, reqTitleH, `Requirement ${r.name}`, { bold: true, align: 'center', bgColor: '#BBDEFB' });

      pid = addRow(tableId, reqExprH, currentY);
      currentY += reqExprH;
      addCell(pid, reqExprH, r.expr);
    });
  });

  // 9) Draw inheritance arrows (UML generalization)
  arrowEdges.forEach((e, i) => {
    xml += `      <mxCell id="edge${i}" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;` +
           `jettySize=auto;html=1;endArrow=block;endFill=0;strokeColor=#000000;" edge="1"` +
           ` source="${e.source}" target="${e.target}" parent="1">\n`;
    xml += `        <mxGeometry relative="1" as="geometry"/>\n`;
    xml += `      </mxCell>\n`;
  });

  // 10) Close out
  xml += `    </root></mxGraphModel>\n`;
  xml += `  </diagram>\n`;
  xml += `</mxfile>`;

  // Write file
  const outFile = inputFile.replace(/\.crml$/, '') + '_requirements.drawio';
  fs.writeFileSync(outFile, xml, 'utf-8');
}

main().catch(err => {
  console.error(err);
  process.exit(1);
});