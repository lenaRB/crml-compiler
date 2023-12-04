package crml.compiler;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.misc.ParseCancellationException;
import org.antlr.v4.runtime.tree.ParseTree;

import grammar.crmlLexer;
import grammar.crmlParser;

import org.apache.logging.log4j.Logger;
import org.junit.platform.launcher.Launcher;
import org.junit.platform.launcher.LauncherDiscoveryRequest;
import org.junit.platform.launcher.LauncherSession;
import org.junit.platform.launcher.TestPlan;
import org.junit.platform.launcher.core.LauncherDiscoveryRequestBuilder;
import org.junit.platform.launcher.core.LauncherFactory;
import org.junit.platform.launcher.listeners.SummaryGeneratingListener;
import org.junit.platform.launcher.listeners.TestExecutionSummary;

import com.beust.jcommander.JCommander;

import org.apache.logging.log4j.LogManager;
import org.junit.platform.engine.discovery.ClassNameFilter;
import org.junit.platform.engine.discovery.DiscoverySelectors;



/**
 * Main entry point for the crmlc compiler
 * @author Lena Buffoni
 * @version 1.0
 */
public class CRMLC {

   private static final Logger logger = LogManager.getLogger();	
   private static 
   SummaryGeneratingListener listener = new SummaryGeneratingListener();
   
    
  private class Settings{
    Boolean debug = false;
    Boolean printAST = false;
  }
   public static void main( String[] args ) throws Exception {

    CommandLineArgs cmd = new CommandLineArgs();

    JCommander jc = JCommander.newBuilder().addObject(cmd).build();

    jc.setProgramName("crmlc");
    jc.parse(args);

    if (cmd.help) {
        jc.usage();
        return;
      }

    // incorrect arguments
    if (cmd.files.isEmpty()&&!cmd.runTestSuite){
      System.err.println(" incorrect arguments");
      jc.usage();
      return;
    }

    if(cmd.runTestSuite){
      runTestSuite("ctests");
      return;  
    }

    // TODO support multiple file loop 
    String path = new File(cmd.files.get(0)).getCanonicalPath();
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
    		parse_file(path, test, out_dir.getPath(), false, false);
    	}
    }
    } else if (file.isFile()) {
    	File out_dir = new File("generated");
        out_dir.mkdir();
        logger.trace("Directory for generated .mo files: " + out_dir.getPath());
        
        logger.trace("Translating: " + file);
		parse_file("", path, out_dir.getPath(), false, false);
    } else {
    	logger.error("Translation error: " + path +  " is not a correct path");
    }

  }

  public static void parse_file (String dir, String file, String gen_dir, Boolean testMode, Boolean generateExternal) throws IOException {
  
    try {
      String fullName = dir + java.io.File.separator + file;
      File in_file = new File(fullName);
      
      in_file.getParentFile().mkdirs();
    
      CharStream code = CharStreams.fromFileName(in_file.getAbsolutePath());
    
      crmlLexer lexer = new crmlLexer(code);
      CommonTokenStream tokens = new CommonTokenStream( lexer );
      crmlParser parser = new crmlParser( tokens );
      
      ParseTree tree = parser.definition();
      
      if (tree == null)
        logger.error("Unable to parse: " + file);
       
      List<String> external_var = new ArrayList<String>();
      crmlVisitorImpl visitor;
      if (generateExternal)
        visitor = new crmlVisitorImpl(parser, external_var);
      else
      visitor = new crmlVisitorImpl(parser);

      try {
        Value result = visitor.visit(tree);
      
      
        if (result != null) {  	
        
          File out_file = new File(gen_dir + java.io.File.separator + Utilities.stripNameEnding(file)+ ".mo");  
        
          out_file.getParentFile().mkdirs();   	
        
          BufferedWriter writer = new BufferedWriter(new FileWriter(out_file));
          writer.write(result.contents);
          writer.close();
          logger.trace("Translated: " + file);

          if(generateExternal && !external_var.isEmpty()){
            File ext_file = new File(gen_dir + java.io.File.separator + Utilities.stripNameEnding(file)+ "_external.txt");
            BufferedWriter ext_writer = new BufferedWriter(new FileWriter(ext_file));
            logger.trace("External variables saved in: " + ext_file);

            for(String s : external_var){
              ext_writer.write(s + "\n");
            }
            ext_writer.close();
          }
            
        }
        else
          logger.error("Unable to translate: " + file);
        
        List<String> ruleNamesList = Arrays.asList(parser.getRuleNames());

        String prettyTree = Utilities.toPrettyTree(tree, ruleNamesList);
        logger.trace("The AST for the program: \n" + prettyTree);
      } catch (ParseCancellationException e) {
        
        logger.error("Translation error: "+ e, e);
        logger.trace("The AST for the program: \n" + tree.toStringTree(parser));
        if (testMode) throw e;
      }
      catch(Exception e) {
        logger.error("Uncaught error: "+ e, e);
        logger.trace("The AST for the program: \n" + tree.toStringTree(parser));
        if (testMode) throw e;
      }
    }
    catch(Exception e)
    {
      logger.error("Uncaught error: "+ e, e);
      if (testMode) throw e;
    }
  }

  public static void runTestSuite(String packageName) {
     System.out.println(" - Running test suite -");
     LauncherDiscoveryRequest request = LauncherDiscoveryRequestBuilder.request()
      .selectors(
          DiscoverySelectors.selectPackage(packageName))
      .filters(ClassNameFilter.includeClassNamePatterns(".*Tests"))
      .build(); 
    LauncherSession launcherSession = LauncherFactory.openSession();
    Launcher launcher = launcherSession.getLauncher();
  
    TestPlan testPlan = launcher.discover(request);
    System.out.println("Found tests: " + testPlan.containsTests()); 
    launcher.registerTestExecutionListeners(listener);
    launcher.execute(request); 
    TestExecutionSummary summary = listener.getSummary();
    summary.printTo(new PrintWriter(System.out));
    
  }
}
