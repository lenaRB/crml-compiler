#!/usr/bin/env node
import { spawnSync } from 'child_process';
import path from 'path';
import { fileURLToPath } from 'url';

// Resolve __dirname in ESM
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Usage: node generateDiagram.js [Requirement] [Instance] <file.crml> [timePoint]
const args = process.argv.slice(2);
if (args.length < 2) {
  console.error('Usage: node generateDiagram.js [Requirement] [Instance] <file.crml> [timePoint]');
  process.exit(1);
}

// Detect if last arg is timePoint or file
let timePoint;
let fileArg = args[args.length - 1];
if (!fileArg.toLowerCase().endsWith('.crml')) {
  timePoint = fileArg;
  fileArg = args[args.length - 2];
}

const filePath = fileArg;
// Determine types from remaining args
const types = timePoint ? args.slice(0, -2) : args.slice(0, -1);

// Map type names to scripts
const scriptMap = {
  requirement: 'requirementDiagramGeneratorWithoutRegex.js',
  instance:    'instanceDiagramGenerator.js'
};

types.forEach(type => {
  const key = type.toLowerCase();
  const scriptName = scriptMap[key];
  if (!scriptName) {
    console.error(`Unknown diagram type: ${type}`);
    return;
  }

  const scriptPath = path.join(__dirname, scriptName);
  const cmdArgs = ['node', scriptPath, filePath];
  if (key === 'instance' && timePoint) {
    cmdArgs.push(timePoint);
  }

  console.log(`\nGenerating ${type} diagram for ${filePath}...`);
  const result = spawnSync(cmdArgs[0], cmdArgs.slice(1), { stdio: 'inherit' });
  if (result.error) {
    console.error(`Error running ${scriptName}:`, result.error);
  }
});
