#!/usr/bin/env node
import antlr4 from 'antlr4';
import fs from 'fs';
import path from 'path';
import { fileURLToPath, pathToFileURL } from 'url';

// ─── Unpack ANTLR essentials ────────────────────────────────────
const { InputStream, CommonTokenStream, tree, error } = antlr4;
const { DefaultErrorStrategy } = error;
const { ParseTreeWalker } = tree;

// ─── Patch missing hook for full-context error reporting ───────────
if (!DefaultErrorStrategy.prototype.reportAttemptingFullContext) {
  DefaultErrorStrategy.prototype.reportAttemptingFullContext = function() {};
}

// ─── Dynamically load generated ANTLR modules ───────────────────
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const crmlLexer = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlLexer.js')).href)).default;
const crmlParser = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlParser.js')).href)).default;
const crmlListener = (await import(pathToFileURL(path.join(__dirname, 'antlr', 'crmlListener.js')).href)).default;

// ─── Custom listener for objects, requirements, inheritance ──────
class RequirementsListener extends crmlListener {
  constructor(tokens) {
    super();
    this.tokens = tokens;
    this.objects = [];
    this.requirements = [];
    this.classes = [];
    this.counter = 0;
  }

  exitVar_def(ctx) {
    this.counter++;
    const seq = this.counter;
    try {
      const declaredType = ctx.type(0).getText();
      const varName = ctx.id().getText();
      const childTexts = (ctx.children || []).map(c => c.getText());
      const second = ctx.type(1);

      console.log(`[exitVar_def seq=${seq}] type=${declaredType}, var=${varName}`);
      console.log(`  children: ${childTexts.join(' ')}`);
      if (second) console.log(`  second type: ${second.getText()}`);

      // Instantiation detection
      if (second && second.getText() === declaredType) {
        console.log(`  -> instantiation of ${declaredType} ${varName}`);
        this.objects.push({ type: declaredType, name: varName, seq });
        return;
      }

      // Requirement detection
      if (declaredType === 'Requirement') {
        const expCtx = ctx.exp(0);
        if (!expCtx) {
          console.log(`  ! no exp context for Requirement ${varName}`);
          return;
        }
        // Correct text extraction using context
        const exprText = this.tokens.getText(expCtx).trim();
        console.log(`  -> requirement ${varName} expr='${exprText}'`);
        this.requirements.push({ name: varName, expr: exprText, seq });
      }
    } catch (e) {
      console.error('Error in exitVar_def:', e);
    }
  }

  exitClass_def(ctx) {
    try {
      const children = ctx.children || [];
      const extIdx = children.findIndex(c => c.getText() === 'extends');
      console.log(`[exitClass_def] children count=${children.length}, extends at=${extIdx}`);
      if (extIdx !== -1) {
        const className = ctx.id(0).getText();
        const superName = ctx.type(0).getText();
        console.log(`  -> ${className} extends ${superName}`);
        this.classes.push({ name: className, superName });
      }
    } catch (e) {
      console.error('Error in exitClass_def:', e);
    }
  }
}

async function main() {
  const inputFile = process.argv[2];
  if (!inputFile) {
    console.error('Usage: node index4debug.js <file.crml>');
    process.exit(1);
  }

  console.log(`Parsing file: ${inputFile}`);

  const text = fs.readFileSync(inputFile, 'utf-8');
  const chars = new InputStream(text);
  const lexer = new crmlLexer(chars);
  const tokens = new CommonTokenStream(lexer);
  tokens.fill();

  const parser = new crmlParser(tokens);
  parser.buildParseTrees = true;
  parser._errHandler = new DefaultErrorStrategy();
  const treeRoot = parser.definition();
  console.log('Parse tree built. Walking...');

  const listener = new RequirementsListener(tokens);
  ParseTreeWalker.DEFAULT.walk(listener, treeRoot);

  console.log('Collected objects:', listener.objects);
  console.log('Collected requirements:', listener.requirements);
  console.log('Collected classes:', listener.classes);

  // Grouping using sequence
  const objs = listener.objects;
  const reqs = listener.requirements;
  const objReqs = {};
  objs.forEach(o => { objReqs[o.name] = []; });
  reqs.forEach(r => {
    let owner = null;
    objs.forEach(o => {
      if (o.seq < r.seq && (!owner || o.seq > owner.seq)) owner = o;
    });
    if (owner) objReqs[owner.name].push(r);
  });

  console.log('Grouped requirements:', objReqs);

  // Continue with Draw.io XML generation…
}

main().catch(err => { console.error(err); process.exit(1); });
