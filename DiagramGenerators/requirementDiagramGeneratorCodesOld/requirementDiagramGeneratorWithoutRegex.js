#!/usr/bin/env node
import antlr4 from 'antlr4';
import fs      from 'fs';
import path    from 'path';
import { fileURLToPath, pathToFileURL } from 'url';

// ─── Unpack ANTLR essentials ────────────────────────────────────
const { InputStream, CommonTokenStream, tree, error } = antlr4;
const { DefaultErrorStrategy } = error;
const { ParseTreeWalker } = tree;

// ─── Patch full-context error hook ──────────────────────────────
if (!DefaultErrorStrategy.prototype.reportAttemptingFullContext) {
  DefaultErrorStrategy.prototype.reportAttemptingFullContext = function() {};
}

// ─── Dynamically load ANTLR-generated modules ───────────────────
const __filename = fileURLToPath(import.meta.url);
const __dirname  = path.dirname(__filename);
const crmlLexer    = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlLexer.js')).href)).default;
const crmlParser   = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlParser.js')).href)).default;
const crmlListener = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlListener.js')).href)).default;

// ─── Listener to collect objects, requirements, classes ─────────
class RequirementsListener extends crmlListener {
  constructor(tokens) {
    super();
    this.tokens       = tokens;
    this.objects      = [];  // [{ type, name, seq }]
    this.requirements = [];  // [{ name, expr, seq }]
    this.classes      = [];  // [{ name, superName }]
    this.counter      = 0;
  }

  exitVar_def(ctx) {
    this.counter++;
    const seq = this.counter;
    try {
      const typeCtxs = ctx.getTypedRuleContexts(crmlParser.TypeContext);
      if (!typeCtxs.length) return;
      const declaredType = typeCtxs[0].getText();
      const varName      = ctx.id().getText();

      // Instantiation: second type matches declared type
      if (typeCtxs.length > 1 && typeCtxs[1].getText() === declaredType) {
        this.objects.push({ type: declaredType, name: varName, seq });
        return;
      }

      // Requirement detection
      if (declaredType === 'Requirement') {
        const expCtxs = ctx.getTypedRuleContexts(crmlParser.ExpContext);
        if (!expCtxs.length) return;
        const exprText = this.tokens.getText(expCtxs[0]).trim();
        this.requirements.push({ name: varName, expr: exprText, seq });
      }
    } catch (e) {
      console.error('exitVar_def error:', e);
    }
  }

  exitClass_def(ctx) {
    try {
      const children = ctx.children || [];
      const extIdx = children.findIndex(c => c.getText() === 'extends');
      if (extIdx !== -1) {
        const className = ctx.id(0).getText();
        const superName = ctx.getTypedRuleContext(crmlParser.TypeContext, 0).getText();
        this.classes.push({ name: className, superName });
      }
    } catch (e) {
      console.error('exitClass_def error:', e);
    }
  }
}

async function main() {
  const inputFile = process.argv[2];
  if (!inputFile) {
    console.error('Usage: node index.js <file.crml>');
    process.exit(1);
  }

  // 1) Read & lex
  const text   = fs.readFileSync(inputFile, 'utf-8');
  const chars  = new InputStream(text);
  const lexer  = new crmlLexer(chars);
  const tokens = new CommonTokenStream(lexer);
  tokens.fill();

  // 2) Parse
  const parser = new crmlParser(tokens);
  parser.buildParseTrees = true;
  parser._errHandler      = new DefaultErrorStrategy();
  const treeRoot = parser.definition();

  // 3) Walk parse tree
  const listener = new RequirementsListener(tokens);
  ParseTreeWalker.DEFAULT.walk(listener, treeRoot);

  // 4) Sort by occurrence
  const objects      = listener.objects.slice().sort((a,b) => a.seq - b.seq);
  const requirements = listener.requirements.slice().sort((a,b) => a.seq - b.seq);

  // 5) Group requirements under each object
  const objReqs = {};
  objects.forEach(o => objReqs[o.name] = []);
  requirements.forEach(r => {
    const owner = objects
      .filter(o => o.seq < r.seq)
      .reduce((prev, curr) => !prev || curr.seq > prev.seq ? curr : prev, null);
    if (owner) objReqs[owner.name].push(r);
  });

  // 6) Inheritance edges
  const arrowEdges = [];
  listener.classes.forEach(c => {
    objects.filter(o => o.type === c.name)
           .forEach(sub => {
             objects.filter(o => o.type === c.superName)
                    .forEach(sup => arrowEdges.push({ source:`table_${sub.name}`, target:`table_${sup.name}` }));
           });
  });

  // 7) Draw.io layout parameters
  const headerH    = 40;
  const objRowH    = 30;
  const reqHdrH    = 30;
  const reqTitleH  = 20;
  const reqExprH   = 40;
  const tableW     = 250;
  const x0         = 60;
  const y0         = 50;
  const gapX       = 50;
  const diagramId  = 'd' + Date.now();

  // 8) Build Draw.io XML
  let xml = '';
  xml += '<?xml version="1.0" encoding="UTF-8"?>\n';
  xml += '<mxfile host="app.diagrams.net">\n';
  xml += `  <diagram id="${diagramId}" name="Page-1">\n`;
  xml += '    <mxGraphModel dx="800" dy="600" grid="1"><root>\n';
  xml += '      <mxCell id="0"/>\n';
  xml += '      <mxCell id="1" parent="0"/>\n';

  let cellCounter = 0;
  function addRow(tableId, height, y) {
    const rid = `r${cellCounter++}`;
    xml += `      <mxCell id="${rid}" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=0;fillColor=none;collapsible=0;dropTarget=0;" vertex="1" parent="${tableId}">\n`;
    xml += `        <mxGeometry y="${y}" width="${tableW}" height="${height}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';
    return rid;
  }
  function addCell(parentRowId, height, text, opts = {}) {
    const { bold = false, align = 'left', bgColor, fontColor } = opts;
    let lbl = bold ? `<b>${text}</b>` : text;
    if (fontColor) lbl = `<font color="${fontColor}">${lbl}</font>`;
    const esc = lbl.replace(/&/g, '&amp;')
                   .replace(/"/g, '&quot;')
                   .replace(/</g, '&lt;')
                   .replace(/>/g, '&gt;');
    let style = `html=1;verticalAlign=middle;whiteSpace=wrap;overflow=visible;align=${align};strokeColor=none;strokeWidth=0;connectable=0;`;
    if (bgColor) style += `fillColor=${bgColor};`;

    const cid = `c${cellCounter++}`;
    xml += `      <mxCell id="${cid}" value="${esc}" style="${style}" vertex="1" parent="${parentRowId}">\n`;
    xml += `        <mxGeometry width="${tableW}" height="${height}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';
  }

  // Render tables for each object
  objects.forEach((obj, idx) => {
    const reqs = objReqs[obj.name] || [];
    const tableH = headerH + objRowH + reqHdrH + reqs.length * (reqTitleH + reqExprH);
    const tableId = `table_${obj.name}`;
    const xPos = x0 + idx * (tableW + gapX);

    // Table container
    xml += `      <mxCell id="${tableId}" style="shape=table;startSize=0;container=1;collapsible=0;childLayout=tableLayout;recursiveResize=0;overflow=visible;strokeColor=#000000;strokeWidth=1;fillColor=none;" vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="${xPos}" y="${y0}" width="${tableW}" height="${tableH}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';

    let y = 0;

    // Class name row
    const rowClass = addRow(tableId, headerH, y); y += headerH;
    addCell(rowClass, headerH, obj.type, { bold: true, align: 'center', bgColor: '#F8BBD0' });

    // Instance name row
    const rowInst = addRow(tableId, objRowH, y); y += objRowH;
    addCell(rowInst, objRowH, obj.name);

    // Requirements header row
    const rowHdr = addRow(tableId, reqHdrH, y); y += reqHdrH;
    addCell(rowHdr, reqHdrH, 'Requirements', { bold: true, align: 'center', bgColor: '#DCEDC8' });

    // Each requirement
    reqs.forEach(r => {
      const rowTitle = addRow(tableId, reqTitleH, y); y += reqTitleH;
      addCell(rowTitle, reqTitleH, `Requirement ${r.name}`, { bold: true, align: 'center', bgColor: '#BBDEFB' });
      const rowExpr = addRow(tableId, reqExprH, y); y += reqExprH;
      addCell(rowExpr, reqExprH, r.expr);
    });
  });

  // Draw inheritance arrows
  arrowEdges.forEach((e, i) => {
    xml += `      <mxCell id="edge${i}" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=0;strokeColor=#000000;" edge="1" source="${e.source}" target="${e.target}" parent="1">\n`;
    xml += '        <mxGeometry relative="1" as="geometry"/>\n';
    xml += '      </mxCell>\n';
  });

  // Close XML
  xml += '    </root></mxGraphModel>\n';
  xml += '  </diagram>\n';
  xml += '</mxfile>';

  // 9) Write out
  const outFile = inputFile.replace(/\.crml$/, '') + '_requirements.drawio';
  fs.writeFileSync(outFile, xml, 'utf-8');
  console.log(`Draw.io file written to ${outFile}`);
}

main().catch(err => { console.error(err); process.exit(1); });
