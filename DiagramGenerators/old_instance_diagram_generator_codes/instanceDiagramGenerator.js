#!/usr/bin/env node
import antlr4 from 'antlr4';
import fs      from 'fs';
import path    from 'path';
import { fileURLToPath, pathToFileURL } from 'url';

const { InputStream, CommonTokenStream, tree, error } = antlr4;
const { DefaultErrorStrategy } = error;
const { ParseTreeWalker } = tree;

// Patch full-context error hook
if (!DefaultErrorStrategy.prototype.reportAttemptingFullContext) {
  DefaultErrorStrategy.prototype.reportAttemptingFullContext = function() {};
}

// Dynamically import ANTLR-generated modules
const __filename = fileURLToPath(import.meta.url);
const __dirname  = path.dirname(__filename);
const crmlLexer    = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlLexer.js')).href)).default;
const crmlParser   = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlParser.js')).href)).default;
const crmlListener = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlListener.js')).href)).default;

// Helper to collect identifier nodes
function collectIdNodes(node, result = []) {
  if (!node.children) return result;
  for (const child of node.children) {
    if (child.constructor.name === 'IdContext') result.push(child);
    collectIdNodes(child, result);
  }
  return result;
}

// Listener collects var_defs and dependencies
class InstanceListener extends crmlListener {
  constructor(tokens) {
    super();
    this.tokens = tokens;
    this.objects = [];
    this.associations = [];
    this.counter = 0;
  }

  exitVar_def(ctx) {
    this.counter++;
    const seq = this.counter;
    const typeCtx = ctx.getTypedRuleContexts(crmlParser.TypeContext)[0];
    const declaredType = typeCtx ? typeCtx.getText() : 'Unknown';
    const varName = ctx.id().getText();
    const obj = { name: varName, type: declaredType, seq, attrs: [] };

    if (declaredType === 'Boolean') {
      const expCtx = ctx.getTypedRuleContexts(crmlParser.ExpContext)[0];
      if (expCtx) obj.attrs.push({ name: 'value', value: this.tokens.getText(expCtx).trim() });
    } else if (declaredType === 'Period') {
      const setCtx = ctx.getTypedRuleContext(crmlParser.Set_defContext, 0);
      if (setCtx) {
        const txt = this.tokens.getText(setCtx).trim();
        const parts = txt.slice(1, -1).split(',');
        if (parts.length >= 2) {
          obj.attrs.push({ name: 'start', value: parts[0].trim() });
          obj.attrs.push({ name: 'end', value: parts[1].trim() });
        }
      }
    }

    this.objects.push(obj);
    collectIdNodes(ctx).forEach(node => {
      const ref = node.getText();
      if (ref !== varName) this.associations.push({ source: varName, target: ref });
    });
  }
}

async function main() {
  const inputFile = process.argv[2];
  const timePoint = process.argv[3];
  if (!inputFile) {
    console.error('Usage: node instance_diagram_generator.js <file.crml> [timePoint]');
    process.exit(1);
  }

  // Parse input
  const text   = fs.readFileSync(inputFile, 'utf-8');
  const chars  = new InputStream(text);
  const lexer  = new crmlLexer(chars);
  const tokens = new CommonTokenStream(lexer);
  tokens.fill();
  const parser     = new crmlParser(tokens);
  parser.buildParseTrees = true;
  parser._errHandler      = new DefaultErrorStrategy();
  const tree = parser.definition();

  // Walk tree
  const listener = new InstanceListener(tokens);
  ParseTreeWalker.DEFAULT.walk(listener, tree);

  // Sort objects by sequence
  const objects = listener.objects.sort((a, b) => a.seq - b.seq);

  // Grid layout parameters
  const tableW = 200, nameH = 30, attrH = 20;
  const extraAttrHeight = 20; // extra min height for the last attribute cell
  const avgCharWidth = 7; // approx pixel width per character
  const maxCharsPerLine = Math.floor(tableW / avgCharWidth);
  const gapX = 50, gapY = 80;
  const cols = Math.ceil(Math.sqrt(objects.length));

  // Compute row heights based on dynamic cell heights
  const rows = Math.ceil(objects.length / cols);
  const rowHeights = Array(rows).fill(0);
  const cellHeightsByObj = objects.map(obj => {
    const heights = [];
    obj.attrs.forEach((attr, idx) => {
      let h = attrH;
      if (idx === obj.attrs.length - 1) {
        const text = `${attr.name} = ${attr.value}`;
        const lines = Math.max(1, Math.ceil(text.length / maxCharsPerLine));
        h = Math.max(attrH + extraAttrHeight, lines * attrH);
      }
      heights.push(h);
    });
    const total = nameH + heights.reduce((sum, h) => sum + h, 0);
    return { heights, total };
  });
  objects.forEach((obj, i) => {
    const r = Math.floor(i / cols);
    rowHeights[r] = Math.max(rowHeights[r], cellHeightsByObj[i].total);
  });

  // Compute y offsets
  const yOffsets = rowHeights.map((_, i) => rowHeights.slice(0, i).reduce((sum, h) => sum + h + gapY, 80));

  // Start Draw.io XML
  let xml = '<?xml version="1.0" encoding="UTF-8"?>\n';
  xml += '<mxfile host="app.diagrams.net">\n';
  xml += `  <diagram id="d${Date.now()}" name="Page-1">\n`;
  xml += '    <mxGraphModel dx="800" dy="600" grid="1"><root>\n';
  xml += '      <mxCell id="0"/>\n';
  xml += '      <mxCell id="1" parent="0"/>\n';

  // Optional time label
  if (timePoint) {
    xml += `      <mxCell id="timeLabel" value="Time = ${timePoint}" style="text;html=1;verticalAlign=middle;align=center;strokeColor=none;fillColor=none;" vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="60" y="40" width="${tableW}" height="20" as="geometry"/>\n`;
    xml += '      </mxCell>\n';
  }

  // Render tables in grid
  let cellId = 0;
  objects.forEach((obj, i) => {
    const col = i % cols;
    const row = Math.floor(i / cols);
    const x = 60 + col * (tableW + gapX);
    const y = yOffsets[row];
    const { heights, total } = cellHeightsByObj[i];
    const tableId = `table_${obj.name}`;

    xml += `      <mxCell id="${tableId}" style="shape=table;container=1;recursiveResize=0;strokeColor=#000;" vertex="1" parent="1">\n`;
    xml += `        <mxGeometry x="${x}" y="${y}" width="${tableW}" height="${total}" as="geometry"/>\n`;
    xml += '      </mxCell>\n';

    // Add rows and cells
    let offsetY = 0;
    function addRow(height) {
      const rid = `r${cellId++}`;
      xml += `      <mxCell id="${rid}" style="shape=tableRow;startSize=0;fillColor=none;" vertex="1" parent="${tableId}">\n`;
      xml += `        <mxGeometry y="${offsetY}" width="${tableW}" height="${height}" as="geometry"/>\n`;
      xml += '      </mxCell>\n';
      offsetY += height;
      return rid;
    }
    function addCell(rowId, height, text, opts = {}) {
      const lbl = opts.bold ? `<b>${text}</b>` : text;
      let style = `html=1;verticalAlign=middle;whiteSpace=wrap;overflow=visible;align=${opts.align||'left'}`;
      if (opts.header) {
        style += ';fillColor=#ADD8E6;strokeColor=none';
      }
      const esc = lbl.replace(/&/g, '&amp;').replace(/\"/g, '&quot;')
                     .replace(/</g, '&lt;').replace(/>/g, '&gt;');
      const cid = `c${cellId++}`;
      xml += `      <mxCell id="${cid}" value="${esc}" style="${style}" vertex="1" parent="${rowId}">\n`;
      xml += `        <mxGeometry width="${tableW}" height="${height}" as="geometry"/>\n`;
      xml += '      </mxCell>\n';
    }

    // Name row (header)
    const nameRow = addRow(nameH);
    addCell(nameRow, nameH, `${obj.name} : ${obj.type}`, { bold: true, align: 'center', header: true });
    // Attribute rows
    obj.attrs.forEach((attr, idx) => {
      const thisHeight = heights[idx];
      const rowId = addRow(thisHeight);
      addCell(rowId, thisHeight, `${attr.name} = ${attr.value}`);
    });
  });

  // Render edges
  listener.associations.forEach(({ source, target }, idx) => {
    xml += `      <mxCell id="edge${idx}" style="edgeStyle=orthogonalEdgeStyle;rounded=0;strokeColor=#000;endArrow=classic;endFill=0;" edge="1" source="table_${source}" target="table_${target}" parent="1">\n`;
    xml += '        <mxGeometry relative="1" as="geometry"/>\n';
    xml += '      </mxCell>\n';
  });

  // Close XML
  xml += '    </root></mxGraphModel>\n';
  xml += '  </diagram>\n';
  xml += '</mxfile>';

  // Write file
  fs.writeFileSync(inputFile.replace(/\.crml$/, '') + '_instances.drawio', xml, 'utf-8');
  console.log(`Diagram written to ${inputFile.replace(/\.crml$/, '')}_instances.drawio`);
}

main().catch(err => console.error(err));
