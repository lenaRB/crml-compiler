package crml.compiler;

import java.util.ArrayList;
import java.util.List;

import com.beust.jcommander.Parameter;

public class CommandLineArgs {

    @Parameter(names = {"-printAST" }, description = "If set to true will display the AST for the model.")
    public Boolean printAST = false;

    @Parameter(names = {"-runTestsuite"}, description = "Will run the tests located in the directory provided in parameters. If no directory is provided, will run the project testsuite.")
    public String runTestSuite;

    @Parameter(names = {"-o"}, description = "Provide an output directory via -o on where to write the .mo files. If no output directory via -o is given then the .mo files are generated in the current directory.")
    public String outputDir = "default";

    @Parameter(description = "Files to be compiled")
    public List<String> files = new ArrayList<>();

    @Parameter(names = "-help", help = true)
    public boolean help;

}
