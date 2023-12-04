package crml.compiler;

import java.util.ArrayList;
import java.util.List;

import com.beust.jcommander.Parameter;

public class CommandLineArgs {
    @Parameter(description = "Files to be compiled")
    public List<String> files = new ArrayList<>();

    @Parameter(names = {"-printAST" }, description = "If set to true will display the AST for the model.")
    public Boolean printAST = false;

    @Parameter(names = {"-testsuite"}, description = "Run the project JUnit testsuite.")
    public Boolean runTestSuite = false;

    @Parameter(names = {"-t"}, description = "Treat the filenames as JUnit tests")
    public Boolean junit = false;

    @Parameter(names = {"-o"}, description = "Provide an output directory via -o on where to write the .mo files. If no output directory via -o is given then the .mo files are generated in the current directory.")
    public String outputDir = "default";

    @Parameter(names = "-help", help = true)
    public boolean help;

}
