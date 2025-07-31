import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const antlrDir = path.join(__dirname, 'antlr');

const fixFiles = ['crmlLexer.js', 'crmlParser.js', 'crmlListener.js'];

fixFiles.forEach(file => {
    const filePath = path.join(antlrDir, file);
    let content = fs.readFileSync(filePath, 'utf8');
    
    // Fix the export structure
    content = content.replace(
        /export default {([^}]+)};/,
        `const mainExport = {$1};
export default mainExport;`
    );
    
    fs.writeFileSync(filePath, content);
});

console.log('Fixed ANTLR imports successfully');