import antlr4 from 'antlr4';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';


const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Import generated parser files
const { crmlLexer } = await import('./antlr/crmlLexer.js');
const { crmlParser } = await import('./antlr/crmlParser.js');
const { crmlListener } = await import('./antlr/crmlListener.js');

// Custom listener to extract inheritance information
class InheritanceListener extends crmlListener {
    constructor() {
        super();
        this.classes = new Map();      // Map of class names to their info
        this.currentClass = null;
        this.inheritanceRelations = [];
    }

    enterClass_def(ctx) {
        const className = ctx.id().getText();
        this.currentClass = {
            name: className,
            extends: null,
            isModel: ctx.parentCtx.definition_type().MODEL() !== null,
            isPackage: ctx.parentCtx.definition_type().PACKAGE() !== null,
            isLibrary: ctx.parentCtx.definition_type().LIBRARY() !== null
        };
        this.classes.set(className, this.currentClass);
    }

    enterType_def(ctx) {
        const typeName = ctx.id().getText();
        this.currentClass = {
            name: typeName,
            extends: null,
            isType: true
        };
        this.classes.set(typeName, this.currentClass);
        
        if (ctx.EXTENDS()) {
            const baseType = ctx.type().getText();
            this.currentClass.extends = baseType;
            this.inheritanceRelations.push({
                from: typeName,
                to: baseType,
                type: 'extends'
            });
        }
    }

    enterClass_var_def(ctx) {
        if (ctx.EXTENDS()) {
            const baseType = ctx.type().getText();
            if (this.currentClass) {
                this.currentClass.extends = baseType;
                this.inheritanceRelations.push({
                    from: this.currentClass.name,
                    to: baseType,
                    type: 'extends'
                });
            }
        }
    }
}

// Function to generate Draw.io XML from inheritance data
function generateDrawIoDiagram(classes, relations) {
    let mxGraph = `
<mxfile>
    <diagram name="Page-1" id="75ae5057-2b1a-65ef-7eeb-f6a6683e5b91">
        <mxGraphModel dx="1422" dy="794" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
            <root>
                <mxCell id="0" />
                <mxCell id="1" parent="0" />
    `;

    // Calculate positions for nodes
    const positions = new Map();
    let x = 50, y = 50;
    const colWidth = 200;
    const rowHeight = 100;
    let col = 0, row = 0;
    const cols = 4;

    // Add all class nodes
    classes.forEach((classInfo, className) => {
        // Calculate position
        x = 50 + (col % cols) * colWidth;
        y = 50 + Math.floor(col / cols) * rowHeight;
        positions.set(className, { x, y });
        col++;

        // Determine shape style based on class type
        let shapeStyle = 'rounded=1;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;';
        if (classInfo.isModel) {
            shapeStyle = 'rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;';
        } else if (classInfo.isPackage) {
            shapeStyle = 'shape=package;whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;';
        } else if (classInfo.isLibrary) {
            shapeStyle = 'shape=folder;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;';
        } else if (classInfo.isType) {
            shapeStyle = 'shape=ellipse;whiteSpace=wrap;html=1;fillColor=#e1d5e7;strokeColor=#9673a6;';
        }

        mxGraph += `
                <mxCell id="${className}" value="${className}" style="${shapeStyle}" vertex="1" parent="1">
                    <mxGeometry x="${x}" y="${y}" width="120" height="60" as="geometry" />
                </mxCell>
        `;
    });

    // Add all inheritance relations
    relations.forEach((rel, index) => {
        const fromPos = positions.get(rel.from);
        const toPos = positions.get(rel.to);
        
        if (fromPos && toPos) {
            mxGraph += `
                <mxCell id="edge${index}" value="${rel.type}" style="endArrow=block;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="${rel.from}" target="${rel.to}">
                    <mxGeometry relative="1" as="geometry" />
                </mxCell>
            `;
        }
    });

    mxGraph += `
            </root>
        </mxGraphModel>
    </mxfile>
    `;

    return mxGraph;
}

// Main function to process CRML file
async function processCrmlFile(filePath) {
    try {
        // Read the input file
        const input = fs.readFileSync(filePath, 'utf-8');
        
        // Create lexer and parser
        const chars = new antlr4.InputStream(input);
        const lexer = new crmlLexer(chars);
        const tokens = new antlr4.CommonTokenStream(lexer);
        const parser = new crmlParser(tokens);
        parser.buildParseTrees = true;
        
        // Parse the input
        const tree = parser.definition();
        
        // Walk the tree with our listener
        const listener = new InheritanceListener();
        antlr4.tree.ParseTreeWalker.DEFAULT.walk(listener, tree);
        
        // Generate Draw.io diagram
        const drawIoXml = generateDrawIoDiagram(listener.classes, listener.inheritanceRelations);
        
        // Write the output file
        const outputPath = path.join(path.dirname(filePath), 
                            path.basename(filePath, '.crml') + '.drawio');
        fs.writeFileSync(outputPath, drawIoXml);
        
        console.log(`Successfully generated inheritance diagram: ${outputPath}`);
    } catch (error) {
        console.error('Error processing CRML file:', error);
    }
}

// Get input file from command line argument or use default
const inputFile = process.argv[2] || './test_files/Spec.crml';
await processCrmlFile(inputFile);