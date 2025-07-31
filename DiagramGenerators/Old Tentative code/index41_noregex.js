#!/usr/bin/env node
import antlr4 from 'antlr4';
import fs      from 'fs';
import path    from 'path';
import { fileURLToPath, pathToFileURL } from 'url';

const { InputStream, CommonTokenStream } = antlr4;

async function main() {
  // ─── Locate our own directory & ANTLR output ────────────────────────────
  const __filename = fileURLToPath(import.meta.url);
  const __dirname  = path.dirname(__filename);
  const { default: crmlLexer }  = await import(pathToFileURL(path.join(__dirname,'antlr','crmlLexer.js')).href);
  const { default: crmlParser } = await import(pathToFileURL(path.join(__dirname,'antlr','crmlParser.js')).href);

  // ─── Read the .crml file ──────────────────────────────────────────────────
  const inputFile = process.argv[2];
  if (!inputFile) {
    console.error('Usage: node index42.js <file.crml>');
    process.exit(1);
  }
  const text = fs.readFileSync(inputFile, 'utf-8');

  // ─── Lex into a token stream ──────────────────────────────────────────────
  const chars  = new InputStream(text);
  const lexer  = new crmlLexer(chars);
  const tokens = new CommonTokenStream(lexer);
  tokens.fill();

  // ─── Only keep the “default channel” tokens (drop whitespace/comments) ─────
  const visible = tokens.getTokens().filter(t => t.channel === antlr4.Token.DEFAULT_CHANNEL);

  // ─── 1) Extract all “Type name is new Type;” instantiations ───────────────
  const objects = [];
  for (let i = 0; i + 5 < visible.length; i++) {
    const [a,b,c,d,e,f] = visible.slice(i,i+6);
    // a.text / b.text both “wordy”, then 'is' 'new', repeated type, semicolon
    if (
      /^\w+$/.test(a.text) &&
      /^\w+$/.test(b.text) &&
      c.text === 'is' &&
      d.text === 'new' &&
      e.text === a.text &&
      f.text === ';'
    ) {
      objects.push({ type: a.text, name: b.text, idx: i });
    }
  }

  // ─── 2) Extract all “Requirement R# is …;” expressions ────────────────────
  const requirements = [];
  for (let i = 0; i + 3 < visible.length; i++) {
    const t0 = visible[i];
    if (t0.text === 'Requirement') {
      const nameTok = visible[i+1];
      const isTok   = visible[i+2];
      if (/^\w+$/.test(nameTok.text) && isTok.text === 'is') {
        let expr = [];
        let j = i+3;
        while (j < visible.length && visible[j].text !== ';') {
          expr.push(visible[j].text);
          j++;
        }
        requirements.push({ name: nameTok.text, expr: expr.join(' '), idx: i });
      }
    }
  }

  // ─── 3) Group reqs under the nearest preceding object ─────────────────────
  const objReqs = {};
  objects.forEach(o => { objReqs[o.name] = []; });
  requirements.forEach(r => {
    let owner = null;
    for (const o of objects) {
      if (o.idx < r.idx && (!owner || o.idx > owner.idx)) owner = o;
    }
    if (owner) objReqs[owner.name].push(r);
  });

  // ─── 4) Find every “class X … extends Y” ─────────────────────────────────
  const classes = [];
  for (let i = 0; i < visible.length; i++) {
    if (visible[i].text === 'class' && visible[i+1] && /^\w+$/.test(visible[i+1].text)) {
      const cls = visible[i+1].text;
      // scan until we hit extends or block start
      for (let j = i+2; j < visible.length; j++) {
        if (visible[j].text === 'extends' && visible[j+1] && /^\w+$/.test(visible[j+1].text)) {
          classes.push({ name: cls, superName: visible[j+1].text });
          break;
        }
        if (visible[j].text === '{' || visible[j].text === ';') break;
      }
    }
  }

  // ─── 5) Pair up subclass→superclass arrows ────────────────────────────────
  const arrowEdges = [];
  classes.forEach(c => {
    const sub = objects.find(o => o.type === c.name);
    const sup = objects.find(o => o.type === c.superName);
    if (sub && sup) {
      arrowEdges.push({ source:`table_${sub.name}`, target:`table_${sup.name}` });
    }
  });

  // ─── 6) Layout & Draw.io XML boilerplate ─────────────────────────────────
  const headerH   = 40, objRowH   = 30, reqHdrH  = 30;
  const reqTitleH = 20, reqExprH  = 40, tableW   = 250;
  const x0        = 60,  y0        = 50,  gapX     = 50;

  const dId = 'd'+Date.now();
  let xml = `<?xml version="1.0" encoding="UTF-8"?>\n`
          + `<mxfile host="app.diagrams.net">\n`
          + `  <diagram id="${dId}" name="Page-1">\n`
          + `    <mxGraphModel dx="800" dy="600" grid="1"><root>\n`
          + `      <mxCell id="0"/>\n`
          + `      <mxCell id="1" parent="0"/>\n`;

  let rowId = 0;
  function addRow(tableId, h, y) {
    const rid = `r${rowId}`;
    xml += `      <mxCell id="${rid}" style="shape=tableRow;html=1;" vertex="1" parent="${tableId}">\n`
        + `        <mxGeometry y="${y}" width="${tableW}" height="${h}" as="geometry"/>\n`
        + `      </mxCell>\n`;
    rowId++;
    return rid;
  }
  function addCell(pid, h, txt, opts={}) {
    const { bold=false, align='left', bgColor, fontColor } = opts;
    let lbl = bold ? `<b>${txt}</b>` : txt;
    if (fontColor) lbl = `<font color="${fontColor}">${lbl}</font>`;
    const esc = lbl.replace(/&/g,'&amp;').replace(/"/g,'&quot;')
                   .replace(/</g,'&lt;').replace(/>/g,'&gt;');
    let style = `html=1;verticalAlign=middle;overflow=visible;align=${align};strokeColor=none;strokeWidth=0;`;
    if (bgColor) style += `fillColor=${bgColor};`;
    xml += `      <mxCell id="c${rowId-1}" value="${esc}" style="${style}" vertex="1" parent="${pid}">\n`
        + `        <mxGeometry width="${tableW}" height="${h}" as="geometry"/>\n`
        + `      </mxCell>\n`;
  }

  // ─── 7) Render each object’s table ────────────────────────────────────────
  objects.forEach((obj,idx) => {
    const reqs      = objReqs[obj.name] || [];
    const tableH    = headerH + objRowH + reqHdrH + reqs.length*(reqTitleH+reqExprH);
    const tableId   = `table_${obj.name}`;
    const xPos      = x0 + idx*(tableW+gapX);

    xml += `      <mxCell id="${tableId}" style="shape=table;startSize=20;container=1;recursiveResize=0;collapsible=0;`
        +    `tableLayout=fixed;html=1;overflow=visible;strokeColor=#000;strokeWidth=1;" `
        +    `vertex="1" parent="1">\n`
        +    `        <mxGeometry x="${xPos}" y="${y0}" width="${tableW}" height="${tableH}" as="geometry"/>\n`
        +    `      </mxCell>\n`;

    let cy=0, pid;
    pid = addRow(tableId, headerH,    cy); addCell(pid,headerH,   obj.type,  { bold:true, align:'center', bgColor:'#F8BBD0' }); cy += headerH;
    pid = addRow(tableId, objRowH,    cy); addCell(pid,objRowH,   obj.name);                                     cy += objRowH;
    pid = addRow(tableId, reqHdrH,    cy); addCell(pid,reqHdrH,   'Requirements', { bold:true, align:'center', bgColor:'#DCEDC8'}); cy += reqHdrH;

    reqs.forEach(r => {
      pid = addRow(tableId, reqTitleH, cy);
      addCell(pid, reqTitleH, `Requirement ${r.name}`, { bold:true, align:'center', bgColor:'#BBDEFB' });
      cy += reqTitleH;
      pid = addRow(tableId, reqExprH, cy);
      addCell(pid, reqExprH, r.expr);
      cy += reqExprH;
    });
  });

  // ─── 8) Render inheritance arrows ─────────────────────────────────────────
  arrowEdges.forEach((e,i) => {
    xml += `      <mxCell id="e${i}" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;`
        +    `endArrow=block;endFill=0" edge="1" parent="1" source="${e.source}" target="${e.target}">\n`
        +    `        <mxGeometry relative="1" as="geometry"/>\n`
        +    `      </mxCell>\n`;
  });

  // ─── 9) Close and write .drawio ───────────────────────────────────────────
  xml += `    </root></mxGraphModel>\n`
      +  `  </diagram>\n`
      +  `</mxfile>\n`;

  const base    = path.basename(inputFile, path.extname(inputFile));
  const outFile = path.join(path.dirname(inputFile), base + '.drawio');
  fs.writeFileSync(outFile, xml, 'utf-8');
  console.log(`Diagram written to ${outFile}`);
}

main().catch(err => {
  console.error(err);
  process.exit(1);
});
