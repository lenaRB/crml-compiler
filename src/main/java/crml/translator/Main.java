package crml.translator;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.misc.ParseCancellationException;
import org.antlr.v4.runtime.tree.ParseTree;

import grammar.crmlLexer;
import grammar.crmlParser;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

public class Main {

	private static final Logger logger = LogManager.getLogger();

   public static void main( String[] args ) throws Exception {

    if (args[0] == null)
    {
      System.out.println("usage: crml.translator.Test path/to/tests/[test.crml] [-o /path/to/output]");
      System.out.println("       provide an input directory or a test to translate all or the given .crml files to .mo files");
      System.out.println("       provide an output directory via -o on where to write the .mo files");
      System.out.println("       if no output directory via -o is given then the .mo files are generated in the current directory");
      return;
    }
    String path = new File(args[0]).getCanonicalPath();
    logger.trace("Directory for tests: " + path);

    File file = new File ( path );
    if (file.isDirectory()) {
    String tests[] = file.list();

    File out_dir = new File("generated");
    out_dir.mkdir();
    logger.trace("Directory for generated .mo files: " + out_dir.getPath());

    for (String test : tests) {
    	if(test.endsWith(".crml")) {
    		logger.trace("Translating: " + test);
    		parse_file(path, test, out_dir.getPath());
    	}
    }
    } else if (file.isFile()) {
    	File out_dir = new File("generated");
        out_dir.mkdir();
        logger.trace("Directory for generated .mo files: " + out_dir.getPath());
        
        logger.trace("Translating: " + file);
		parse_file("", path, out_dir.getPath());
    } else {
    	logger.error("Translation error: " + path +  " is not a correct path");
    }

  }

  public static void parse_file (String dir, String file, String gen_dir) throws IOException {
    
	CharStream code = CharStreams.fromFileName(dir + "/" + file);

    crmlLexer lexer = new crmlLexer(code);
    CommonTokenStream tokens = new CommonTokenStream( lexer );
    crmlParser parser = new crmlParser( tokens );
     
    ParseTree tree = parser.definition();
    
    if (tree == null)
    	logger.error("Unable to parse: " + file);
    
    logger.trace("The AST for the program: \n" + tree.toStringTree(parser));
    
    
    crmlVisitorImpl visitor = new crmlVisitorImpl(parser);

    try {
    Value result = visitor.visit(tree);
    
    
    if(result != null) {  	
    	BufferedWriter writer = new BufferedWriter(new FileWriter(gen_dir + "/" +file.substring(0, file.lastIndexOf('.'))+ ".mo"));
        writer.write(result.contents);
        writer.close();
        logger.trace("Translated: " + file);
    }
    else
    	logger.error("Unable to translate: " + file);
    } catch (ParseCancellationException e) {
    	
    	logger.error("Translation error: "+ e, e);
    }
    catch(Exception e) {
    	logger.error("Uncaught error: "+ e, e);
    }

  }
  
}
