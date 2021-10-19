package crml.translator;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeListener;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import crml.crmlLexer;
import crml.crmlParser;
import crml.translator.crmlVisitorImpl;



public class Main {
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
    System.out.println("Directory for tests: " + path);
    File dir = new File ( path );
    String tests[] = dir.list();
    
    File out_dir = new File("generated");
    out_dir.mkdir();
    
    for (String test : tests) {
      System.out.println("-------------------------------");
      System.out.println("Translating: " + test);
      test_parser(path, test);
    }

  }
  
  public static void test_parser (String dir, String file) throws IOException {
    CharStream code = CharStreams.fromFileName(dir + "/" + file);

    crmlLexer lexer = new crmlLexer(code);
    CommonTokenStream tokens = new CommonTokenStream( lexer );
    crmlParser parser = new crmlParser( tokens );
    //parser.setTrace(true);
    ParseTree tree = parser.definition();
    //System.out.println(tree.toStringTree(parser));
      
    ParseTreeWalker walker = new ParseTreeWalker(); 
    //crmlListenerImpl listener = new crmlListenerImpl();

    //walker.walk((ParseTreeListener) listener, tree);
    
    crmlVisitorImpl visitor = new crmlVisitorImpl();
    Value result = visitor.visit(tree);
    if(result != null)
    	System.out.println("Tranlsated " + file);
    
    BufferedWriter writer = new BufferedWriter(new FileWriter("generated/" +file.substring(0, file.lastIndexOf('.'))+ ".mo"));
    writer.write(result.contents);
    writer.close();
  }
}
