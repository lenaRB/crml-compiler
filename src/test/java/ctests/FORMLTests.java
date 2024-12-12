package ctests;

import static org.junit.jupiter.api.Assertions.fail;

import java.io.IOException;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.params.provider.MethodSource;

import crml.compiler.ModelicaSimulationException;
import crml.compiler.OMCmsg;
import crml.compiler.Utilities;
import crml.compiler.OMCUtil.CompileStage;

import org.junit.jupiter.params.ParameterizedTest;


public class FORMLTests  {

    @Nested
    public static class SimulationTests extends ParameterizedSuite {
        public static String files="blanc";

        @BeforeAll
        public static void setupTestSuite() throws IOException {
            cs.initAllDirs("testModels", "verificationModels", 
                    "refResults", "libraries/FORML_test");
            cs.processBuilder = new ProcessBuilder();
            cs.setOutputSubFolder("FORML_test");
        }
    
    
        @ParameterizedTest
        @MethodSource("fileNameSource")
        public void simulateTestFile(final String fileName) throws InterruptedException, IOException, ModelicaSimulationException {
            OMCmsg ret = Util.runTest(fileName, cs, CompileStage.SIMULATE);
            files = ret.files;
            if(ret.msg.contains("Failed")||ret.msg.contains("Error"))
			fail("Unable to run Modelica script " + Utilities.getAbsolutePath(fileName) + ".mos", 
			new Throwable( "\n omc fails with the following message: \n" + ret.msg));
		
        }

    }
}
