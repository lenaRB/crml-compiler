package crml.compiler;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
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
   private static Launcher launcher;

   public static void main( String[] args ) throws Exception {

    CommandLineArgs cmd = new CommandLineArgs();

    JCommander jc = JCommander.newBuilder().addObject(cmd).build();

    CompileSettings cs = new CompileSettings();

    jc.setProgramName("crmlc");
    jc.parse(args);

    if (cmd.help) {
        jc.usage();
        return;
    }

    // incorrect arguments
    if (cmd.files.isEmpty()&&!cmd.runTestSuite&&!cmd.testsuiteETL){
      System.err.println(" incorrect arguments");
      jc.usage();
      return;
    }

    if(cmd.runTestSuite){
      runTestSuite(".*Tests");
      return;  
    }

    if(cmd.testsuiteETL){
      runTestSuite(".*ETLTests.*");
      return;  
    }

    if(cmd.simulate != null)
      cs.verifModelFolder = cmd.simulate;
    
    if(cmd.verify != null)
      cs.referenceResFolder = cmd.verify;
    
    logger.trace("Output dir: " + cmd.outputDir);
    // remove quotes if they exist
    cmd.outputDir = cmd.outputDir.replace("\"", "");
      
    File out_dir = new File(cmd.outputDir);
    out_dir.mkdir();

    logger.trace("Directory for generated .mo files: [" + out_dir.getPath() + "] absolute path: [" + out_dir.getAbsolutePath() + "]");

    for(String f : cmd.files){
       // remove quotes if they exist
       f = f.replace("\"", "");
       String path = new File(f).getCanonicalPath();
       File file = new File ( path );
       String [] testFiles;
       if (file.isDirectory()){
          testFiles=file.list();
           for (String test : testFiles) {
            if(test.endsWith(".crml")) {
            logger.trace("Translating test: " + test);
              parse_file(path, test, cmd.outputDir, cmd.stacktrace, cmd.printAST , 
                cmd.generateExternal, cmd.within, cmd.causal);
              if(cmd.simulate!=null) {
                OMCmsg msg;
                try {
                  msg = OMCUtil.compile(test, path, cs);
                  if(msg.msg.contains("false"))
                  logger.error("Unable to load Modelica model " + test + 
                      "\n omc fails with the following message: \n" + msg);
                }
                catch (ModelicaSimulationException e) {
                  logger.error("Unable to simulate: " + file + "\n");
                }
              } 
            }
          }
        } else if (file.isFile()){
        logger.trace("Translating file: " + file);
          String stripped_file_name = Utilities.stripNameEndingAndPath(path);
          String outputDir = Utilities.addDirToPath(cmd.outputDir, stripped_file_name);
          parse_file("", path, outputDir, cmd.stacktrace, 
            cmd.printAST, cmd.generateExternal, cmd.within, cmd.causal);
         if(cmd.simulate!=null){
                OMCmsg msg;
                try {
                  msg = OMCUtil.compile(file.getPath(), cmd.outputDir, cs);
                  if(msg.msg.contains("false"))
                  logger.error("Unable to load Modelica model " + file + 
                      "\n omc fails with the following message: \n" + msg);
                }
                catch (ModelicaSimulationException e) {
                  logger.error("Unable to simulate: " + file + "\n");
                }
              } 
        } else
        logger.error("Translation error : " + path +  " is not a correct path");
      }
    
  }

  public static void parse_file (
      String dir, String file, 
      String gen_dir, Boolean testMode, Boolean printAST,
      Boolean generateExternal,
      String within,
      Boolean causal) throws Exception {
  
    try {
      String fullName = dir + java.io.File.separator + file;
      File in_file = new File(fullName);
    
      CharStream code = CharStreams.fromFileName(in_file.getAbsolutePath());
    
      crmlLexer lexer = new crmlLexer(code);
      CommonTokenStream tokens = new CommonTokenStream( lexer );
      crmlParser parser = new crmlParser( tokens );
      List<String> ruleNamesList = Arrays.asList(parser.getRuleNames());
      ParseTree tree = parser.definition();
      
      if (tree == null)
        logger.error("Unable to parse: " + file);

      if (printAST){
            String prettyTree = Utilities.toPrettyTree(tree, ruleNamesList);
            logger.trace("\nThe AST for the program: \n" + prettyTree);
          }
       
      List<String> external_var = new ArrayList<String>();
      crmlVisitorImpl visitor;
     

      if (generateExternal)
        visitor = new crmlVisitorImpl(parser, external_var, causal);
      else
        visitor = new crmlVisitorImpl(parser, causal);

      try {
        Value result = visitor.visit(tree);
  
        if (result != null) {  	
        
          File out_file = new File(gen_dir + java.io.File.separator + 
            Utilities.stripNameEndingAndPath(Utilities.removeWindowsDriveLetter(file)) + ".mo");
        
          out_file.getParentFile().mkdirs();   	
        
          BufferedWriter writer = new BufferedWriter(new FileWriter(out_file));
          System.out.println("File : " + out_file.toString() + " within : " + within);
          if(!within.isEmpty())
            writer.write("within " + within + ";\n");
          writer.write(result.contents);
          writer.close();
          logger.trace("Translated: " + file);
          logger.trace("Output Modelica file: " + out_file.getAbsolutePath());

          if(generateExternal && !external_var.isEmpty()){
            File ext_file = new File(gen_dir + java.io.File.separator + 
              Utilities.stripNameEndingAndPath(file)+ "_external.txt");
            BufferedWriter ext_writer = new BufferedWriter(new FileWriter(ext_file));
            logger.trace("External variables saved in: " + ext_file);

            for(String s : external_var){
              ext_writer.write(s + "\n");
            }
            ext_writer.close();
          }           
        }
        else {
          logger.error("Unable to translate: " + file + "\n");
          if (printAST){
            String prettyTree = Utilities.toPrettyTree(tree, ruleNamesList);
            logger.trace("\nThe AST for the program: \n" + prettyTree);
          }
          if(testMode)
            throw new Exception("Translation error");
        }
        
      } catch (ParseCancellationException e) {
        
        logger.error("Translation error: "+ e, e);
        if (printAST){
            String prettyTree = Utilities.toPrettyTree(tree, ruleNamesList);
            logger.trace("\nThe AST for the program: \n" + prettyTree);
          }
        if (testMode) throw e;
      }
      catch(Exception e) {
        logger.error("Uncaught error: " + e, e);
        if (printAST){
            String prettyTree = Utilities.toPrettyTree(tree, ruleNamesList);
            logger.trace("\nThe AST for the program: \n" + prettyTree);
          }
        if (testMode) throw e;
      }
    }
    catch(Exception e)
    {
      logger.error("Uncaught error: " + e, e);
      if (testMode) throw e;
    }
  }

  /**
   * Run JUnit tests
   * @param packageName
   */
  public static void runTestSuite(String filter) {

    String testSuitePackage = "ctests";
    SummaryGeneratingListener listener = new SummaryGeneratingListener();
    TestListener tl = new TestListener();

    LauncherDiscoveryRequest request = LauncherDiscoveryRequestBuilder.request()
      .selectors(
          DiscoverySelectors.selectPackage(testSuitePackage))
      .filters(ClassNameFilter.includeClassNamePatterns(filter))
      .build(); 
    LauncherSession launcherSession = LauncherFactory.openSession();
    launcher = launcherSession.getLauncher();
    launcher.registerTestExecutionListeners(listener, tl);
    //launcher.registerTestExecutionListeners(LoggingListener.forJavaUtilLogging(Level.INFO));
  
    TestPlan testPlan = launcher.discover(request);

    if(!testPlan.containsTests()){
     logger.error("The testsuite " + testPlan.getClass().getName() + " does not contain any JUnit tests.");
     return;
    }
    
    launcher.execute(testPlan); 
    TestExecutionSummary summary = listener.getSummary();
    summary.printTo(new PrintWriter(System.out));
  
    
  }
}
