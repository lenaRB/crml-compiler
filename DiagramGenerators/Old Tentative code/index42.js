#!/usr/bin/env node
import antlr4 from 'antlr4';
import fs    from 'fs';
import path  from 'path';
import { fileURLToPath } from 'url';

// ─── unpack what we need ─────────────────────────────────────────────
const { InputStream, CommonTokenStream, tree, error } = antlr4;
const { BailErrorStrategy, DefaultErrorStrategy }   = error;
const { ParseTreeWalker }                           = tree;

// ─── patch error‐strategies so they implement the missing hook ───────
[DefaultErrorStrategy, BailErrorStrategy].forEach(Strategy => {
  if (Strategy && !Strategy.prototype.reportAttemptingFullContext) {
    Strategy.prototype.reportAttemptingFullContext = function() { /* no-op */ };
  }
});

// ─── locate ANTLR‐generated files ────────────────────────────────────
const __filename = fileURLToPath(import.meta.url);
const __dirname  = path.dirname(__filename);

// ─── dynamically import parser/lexer/listener ────────────────────────
const { default: crmlLexer    } = await import(path.join(__dirname, 'antlr', 'crmlLexer.js'));
const { default: crmlParser   } = await import(path.join(__dirname, 'antlr', 'crmlParser.js'));
const { default: crmlListener } = await import(path.join(__dirname, 'antlr', 'crmlListener.js'));

// ─── AST listener to grab the model name ─────────────────────────────
class RequirementsListener extends crmlListener {
  constructor() {
    super();
    this.modelName = null;
  }
  enterDefinition(ctx) {
    this.modelName = ctx.id().getText();
  }
}

async function main() {
  const inputFile = process.argv[2];
  if (!inputFile) {
    console.error('Usage: node index4.js <file.crml>');
    process.exit(1);
  }
  console.log(`Parsing CRML → ${inputFile}`);

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

  // 3) walk and collect model name
  const listener = new RequirementsListener();
  ParseTreeWalker.DEFAULT.walk(listener, treeRoot);

  // 4) extract objects: “Type name is new Type;”
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

  // 6) group requirements under each object by position
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

  // 7) extract class inheritance clauses
  const classRegex = /class\s+(\w+)\s+is\s*\{[\s\S]*?\}(?:\s+extends\s+(\w+))?;/g;
  const classes = [];
  let cMatch;
  while ((cMatch = classRegex.exec(text)) !== null) {
    if (cMatch[2]) {
      classes.push({ name: cMatch[1], superName: cMatch[2] });
    }
  }

  // 8) prepare inheritance edges between object-tables
  const arrowEdges = [];
  classes.forEach(c => {
    const subInsts   = objects.filter(o => o.type === c.name);
    const superInsts = objects.filter(o => o.type === c.superName);
    if (subInsts.length && superInsts.length) {
      arrowEdges.push({
        source: `table_${subInsts[0].name}`,
        target: `table_${superInsts[0].name}`
      });
    }
  });

  // 9) layout settings
  const headerH    = 40;   // model name row
  const objRowH    = 30;   // object name row
  const reqHdrH    = 30;   // "Requirements" row
  const reqTitleH  = 20;   // each Requirement title
  const reqExprH   = 40;   // each Requirement expression
  const tableW     = 250;
  const x0         = 60;
  const y0         = 50;
  const gapX       = 50;   // space between tables

  // 10) start Draw.io XML
  const diagramId = 'd' + Date.now();
  let xml = `<?xml version="1.0" encoding="UTF-8"?>\n`;
  xml    += `<mxfile host="app.diagrams.net">\n`;
  xml    += `  <diagram id="${diagramId}" name="Page-1">\n`;
  xml    += `    <mxGraphModel dx="800" dy="600" grid="1"><root>\n`;
  xml    += `      <mxCell id="0"/>\n`;
  xml    += `      <mxCell id="1" parent="0"/>\n`;

  let rowId = 0;

  // helper functions
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

  // 11) render one table per object
  objects.forEach((obj, idx) => {
    const reqs   = objReqs[obj.name] || [];
    const tableH = headerH + objRowH + reqHdrH + reqs.length*(reqTitleH+reqExprH);
    const tableId = `table_${obj.name}`;
    const xPos   = x0 + idx*(tableW + gapX);

    // outer container with consistent border
    xml += `      <mxCell id="${tableId}" style="shape=table;startSize=20;container=1;recursiveResize=0;collapsible=0;`
         + `tableLayout=fixed;html=1;overflow=visible;strokeColor=#000000;strokeWidth=1;"`
         + ` vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="${xPos}" y="${y0}" width="${tableW}" height="${tableH}" as="geometry"/>\n`;
    xml += `      </mxCell>\n`;

    let currentY = 0;

    // model name (light pink)
    let pid = addRow(tableId, headerH, currentY);
    currentY += headerH;
    addCell(pid, headerH, listener.modelName, {
      bold: true,
      align: 'center',
      bgColor: '#F8BBD0',
      fontColor: '#000000'
    });

    // object name
    pid = addRow(tableId, objRowH, currentY);
    currentY += objRowH;
    addCell(pid, objRowH, obj.name);

    // "Requirements" header (light green)
    pid = addRow(tableId, reqHdrH, currentY);
    currentY += reqHdrH;
    addCell(pid, reqHdrH, 'Requirements', {
      bold: true,
      align: 'center',
      bgColor: '#DCEDC8',
      fontColor: '#000000'
    });

    // each requirement (light blue)
    reqs.forEach(r => {
      pid = addRow(tableId, reqTitleH, currentY);
      currentY += reqTitleH;
      addCell(pid, reqTitleH, `Requirement ${r.name}`, {
        bold: true,
        align: 'center',
        bgColor: '#BBDEFB',
        fontColor: '#000000'
      });

      pid = addRow(tableId, reqExprH, currentY);
      currentY += reqExprH;
      addCell(pid, reqExprH, r.expr);
    });
  });

  // 12) draw inheritance arrows
  arrowEdges.forEach((e, i) => {
    xml += `      <mxCell id="edge${i}" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;`
         + `jettySize=auto;html=1;endArrow=block;strokeColor=#000000;" edge="1"`
         + ` source="${e.source}" target="${e.target}" parent="1">\n`;
    xml += `        <mxGeometry relative="1" as="geometry"/>\n`;
    xml += `      </mxCell>\n`;
  });

  // 13) close out
  xml += `    </root></mxGraphModel>\n`;
  xml += `  </diagram>\n`;
  xml += `</mxfile>`;

  // write file
  const outFile = inputFile.replace(/\.crml$/, '') + '_requirements.drawio';
  fs.writeFileSync(outFile, xml, 'utf-8');
}

main().catch(err => { console.error(err); process.exit(1); });
