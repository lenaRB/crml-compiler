package crml.parser;

import java.io.File;
import java.io.IOException;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeListener;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import crml.crmlLexer;
import crml.crmlParser;



public class Main {
  public static void main( String[] args ) throws Exception {
    if (args[0] == null)
    {
      System.out.println("usage: GrammarTest path/to/tests/");
      return;
    }
    String path = new File(args[0]).getCanonicalPath();
    System.out.println("Directory for tests: " + path);
    File dir = new File ( path );
    String tests[] = dir.list();
    
    for (String test : tests) {
      System.out.println("-------------------------------");
      System.out.println("Testing: " + test);
      test_parser(dir + "/" + test);
    }

  }
  
  public static void test_parser (String file) throws IOException {
    CharStream code = CharStreams.fromFileName(file);

    crmlLexer lexer = new crmlLexer(code);
      CommonTokenStream tokens = new CommonTokenStream( lexer );
      crmlParser parser = new crmlParser( tokens );
      //parser.setTrace(true);
      ParseTree tree = parser.definition();
      System.out.println(tree.toStringTree(parser));
  }
}
