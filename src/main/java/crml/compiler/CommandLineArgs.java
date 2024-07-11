package crml.compiler;

import java.util.ArrayList;
import java.util.List;

import com.beust.jcommander.Parameter;

public class CommandLineArgs {
    @Parameter(description = "Files to be compiled")
    public List<String> files = new ArrayList<>();

    @Parameter(names = {"--printAST" }, description = "If set to true will display the AST for the model.")
    public Boolean printAST = false;

    @Parameter(names = {"--testsuite"}, description = "Run the project JUnit testsuite.")
    public Boolean runTestSuite = false;

    @Parameter(names = {"--external", "-e"}, description = "Generate a file containing the external variables found in the CRML model. \n Used to connect the requirement model to validation models.")
    public Boolean generateExternal = false;

    @Parameter(names = {"--stacktrace"}, description = "Print the exception stack for errors")
    public Boolean stacktrace = false;

    @Parameter(names = {"-t"}, description = "Treat the filenames as JUnit tests")
    public Boolean junit = false;

    @Parameter(names = {"-o"}, description = "Provide an output directory via -o on where to write the .mo files. If no output directory via -o is given then the .mo files are generated in the current directory.")
    public String outputDir = "generated";

    @Parameter(names = "--help", help = true)
    public boolean help;

    @Parameter(names = "--simulate", description = "simulate the files passed in parameters, takes the path to the additional omc files")
    public String simulate = null; 

    @Parameter(names = "--verify",  description = "verify the files passed in parameters, takes the path to the reference files")
    public String verify = null;

    @Parameter(names = "--testsuiteETL",  description = "run just the ETL tests")
    public boolean testsuiteETL;
    
    @Parameter(names = "--within",  description = "generate the translated modelica model within a given class")
    public String within = "";

    @Parameter(names = {"-causal"}, description = "Generates explicit input prefixes in helper blocks")
    public Boolean causal = false;
}
