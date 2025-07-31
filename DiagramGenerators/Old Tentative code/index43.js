#!/usr/bin/env node
import antlr4 from 'antlr4';
import fs    from 'fs';
import path  from 'path';
import { fileURLToPath } from 'url';

// ─── unpack ANTLR essentials
const { InputStream, CommonTokenStream, tree, error } = antlr4;
const { BailErrorStrategy, DefaultErrorStrategy }   = error;
const { ParseTreeWalker }                           = tree;

// ─── patch error strategies
[DefaultErrorStrategy, BailErrorStrategy].forEach(Strategy => {
  if (Strategy && !Strategy.prototype.reportAttemptingFullContext) {
    Strategy.prototype.reportAttemptingFullContext = () => {};
  }
});

// ─── locate generated artifacts
const __filename = fileURLToPath(import.meta.url);
const __dirname  = path.dirname(__filename);
const { default: crmlLexer    } = await import(path.join(__dirname, 'antlr', 'crmlLexer.js'));
const { default: crmlParser   } = await import(path.join(__dirname, 'antlr', 'crmlParser.js'));
const { default: crmlListener } = await import(path.join(__dirname, 'antlr', 'crmlListener.js'));

// ─── XML escape
function escapeXml(str) {
  return str.replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;')
            .replace(/'/g, '&apos;');
}

// ─── Listener
class RequirementsListener extends crmlListener {
  constructor(chars) {
    super();
    this.modelName   = null;
    this.objects     = []; // { type, name, pos }
    this.definitions = []; // { name, expr, pos }
    this.chars       = chars;
  }

  enterDefinition(ctx) {
    this.modelName = ctx.id().getText();
  }

  exitUninstantiated_def(ctx) {
    const type = ctx.type().getText();
    const ids  = Array.isArray(ctx.id()) ? ctx.id() : [ctx.id()];
    ids.forEach(idCtx => {
      const name = idCtx.getText();
      const pos  = idCtx.start.start;
      this.definitions.push({ name, expr: '', pos });
      if (type === 'Period') this.objects.push({ type, name, pos });
    });
  }

  exitVar_def(ctx) {
    const type = ctx.type().getText();
    const idCtx = ctx.id();
    const pos   = idCtx.start.start;
    const expCtx = ctx.exp && ctx.exp();
    if (!expCtx) return;
    const expr = this.chars.getText(expCtx.start.start, expCtx.stop.stop + 1);
    const name = idCtx.getText();
    this.definitions.push({ name, expr, pos });
    if (type === 'Clock' || type === 'Period' || expr.trim().startsWith('new ')) {
      this.objects.push({ type, name, pos });
    }
  }

  exitOperator(ctx) {
    const text = ctx.operator_def().getText();
    const [lhs, rhs] = text.split('=');
    const pos  = ctx.start.start;
    this.definitions.push({ name: lhs.trim(), expr: rhs.trim(), pos });
  }

  exitTemplate(ctx) {
    const text = ctx.getText();
    const [lhs, rhs] = text.split('=');
    const pos  = ctx.start.start;
    this.definitions.push({ name: lhs.replace(/^Template\s+/, '').trim(), expr: rhs.replace(/;$/, '').trim(), pos });
  }
}

async function main() {
  const file = process.argv[2];
  if (!file) {
    console.error('Usage: node index.js <file.crml>'); process.exit(1);
  }
  const text = fs.readFileSync(file, 'utf-8');
  const chars = new InputStream(text);
  const lexer = new crmlLexer(chars);
  const tokens = new CommonTokenStream(lexer);
  tokens.fill();
  const parser = new crmlParser(tokens);
  parser.buildParseTrees = true;
  parser._errHandler = new DefaultErrorStrategy();

  const tree = parser.definition();
  const listener = new RequirementsListener(chars);
  ParseTreeWalker.DEFAULT.walk(listener, tree);

  // sort
  const objects = listener.objects.sort((a,b) => a.pos - b.pos);
  const defs    = listener.definitions.sort((a,b) => a.pos - b.pos);

  // group under objects
  const grouped = {};
  objects.forEach(o => grouped[o.name] = []);
  defs.forEach(d => {
    let owner = null;
    objects.forEach(o => {
      if (o.pos <= d.pos && (!owner || o.pos > owner.pos)) owner = o;
    });
    if (owner) grouped[owner.name].push(d);
  });

  // inheritance
  const re = /class\s+(\w+)\s+is\s*\{[\s\S]*?\}(?:\s+extends\s+(\w+))?;/g;
  const edges = [];
  let m;
  while ((m = re.exec(text))) {
    const [_, sub, sup] = m;
    const iSub = objects.find(o => o.type === sub);
    const iSup = objects.find(o => o.type === sup);
    if (iSub && iSup) edges.push({ src: iSub.name, tgt: iSup.name });
  }

  // layout
  const W = 250, Hdr=40, ObjH=30, SecH=30, T=20, E=40;
  const gapX=50, startX=60, startY=50;

  let xml = '<?xml version="1.0" encoding="UTF-8"?>\n';
  xml += '<mxfile host="app.diagrams.net">\n';
  xml += `<diagram name="Page-1">\n`;
  xml += '<mxGraphModel dx="800" dy="600" grid="1">\n<root>\n';

  xml += '<mxCell id="0"/>\n<mxCell id="1" parent="0"/>\n';

  let cid=2;
  function cell(id, value, style, parent, geometry) {
    xml += `<mxCell id="${id}" value="${escapeXml(value)}" style="${style}" vertex="1" parent="${parent}">\n`;
    xml += `<mxGeometry ${geometry} as="geometry"/>\n`;
    xml += '</mxCell>\n';
  }

  objects.forEach((o,i) => {
    const items = grouped[o.name]||[];
    const totalH = Hdr + ObjH + SecH + items.length*(T+E);
    const tableId = `${cid++}`;
    const x = startX + i*(W+gapX), y=startY;
    cell(tableId, '', `shape=table;tableLayout=fixed;startSize=20;container=1;recursiveResize=0;html=1;strokeColor=#000;strokeWidth=1;`, '1', `x=\"${x}\" y=\"${y}\" width=\"${W}\" height=\"${totalH}\"`);

    let cy=0;
    // header
    const row1 = `${cid++}`;
    cell(row1, '', 'shape=tableRow;html=1;', tableId, `y=\"${cy}\" width=\"${W}\" height=\"${Hdr}\"`);
    const c1 = `${cid++}`;
    cell(c1, listener.modelName, 'shape=tableCell;html=1;verticalAlign=middle;align=center;fillColor=#F8BBD0;', row1, `width=\"${W}\" height=\"${Hdr}\"`);
    cy += Hdr;
    // object name
    const row2 = `${cid++}`;
    cell(row2, '', 'shape=tableRow;html=1;', tableId, `y=\"${cy}\" width=\"${W}\" height=\"${ObjH}\"`);
    const c2 = `${cid++}`;
    cell(c2, o.name, 'shape=tableCell;html=1;verticalAlign=middle;align=left;', row2, `width=\"${W}\" height=\"${ObjH}\"`);
    cy += ObjH;
    // section header
    const row3 = `${cid++}`;
    cell(row3, '', 'shape=tableRow;html=1;', tableId, `y=\"${cy}\" width=\"${W}\" height=\"${SecH}\"`);
    const c3 = `${cid++}`;
    cell(c3, 'Definitions', 'shape=tableCell;html=1;verticalAlign=middle;align=center;fillColor=#DCEDC8;', row3, `width=\"${W}\" height=\"${SecH}\"`);
    cy += SecH;
    // items
    items.forEach(d => {
      const rowt = `${cid++}`;
      cell(rowt, '', 'shape=tableRow;html=1;', tableId, `y=\"${cy}\" width=\"${W}\" height=\"${T}\"`);
      const ct = `${cid++}`;
      cell(ct, d.name, 'shape=tableCell;html=1;verticalAlign=middle;align=left;fillColor=#BBDEFB;', rowt, `width=\"${W}\" height=\"${T}\"`);
      cy += T;
      const rowe = `${cid++}`;
      cell(rowe, '', 'shape=tableRow;html=1;', tableId, `y=\"${cy}\" width=\"${W}\" height=\"${E}\"`);
      const ce = `${cid++}`;
      cell(ce, d.expr, 'shape=tableCell;html=1;verticalAlign=middle;align=left;', rowe, `width=\"${W}\" height=\"${E}\"`);
      cy += E;
    });
  });

  edges.forEach((e,i) => {
    const id = `${cid++}`;
    xml += `<mxCell id="${id}" edge="1" source="${e.src}" target="${e.tgt}" parent="1" style="edgeStyle=orthogonalEdgeStyle;endArrow=block;html=1;strokeColor=#000;">\n`;
    xml += `<mxGeometry relative="1" as="geometry"/>\n`;
    xml += '</mxCell>\n';
  });

  xml += '</root>\n</mxGraphModel>\n';
  xml += '</diagram>\n</mxfile>';

  const outName = file.replace(/\.crml$/, '') + '_requirements.drawio';
  fs.writeFileSync(outName, xml, 'utf-8');
}
main().catch(e => { console.error(e); process.exit(1); });