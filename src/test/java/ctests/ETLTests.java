package ctests;

import static org.junit.jupiter.api.Assertions.fail;

import java.io.IOException;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.params.provider.MethodSource;

import crml.compiler.ModelicaSimulationException;
import crml.compiler.OMCUtil;
import crml.compiler.OMCmsg;
import crml.compiler.TestListener;
import crml.compiler.Utilities;
import crml.compiler.OMCUtil.CompileStage;

import org.junit.jupiter.params.ParameterizedTest;


public class ETLTests  {
    @Nested
    @Disabled
    public static class TranslationTests extends ParameterizedSuite {

        public static String files;
        @BeforeAll
        public static void setupTestSuite() {
            cs.initAllDirs("testModels", "verificationModels", 
                    "refResults", "libraries/ETL_test");
            cs.processBuilder = new ProcessBuilder();
            cs.setOutputSubFolder("ETL_test_t");
        } 
    
        @ParameterizedTest
        @MethodSource("fileNameSource")
        public void simulateTestFile(final String fileName) throws InterruptedException, IOException, ModelicaSimulationException {
            OMCmsg msg = Util.runTest(fileName, cs, CompileStage.TRANSLATE);
            files = msg.files;
        }
    }

    @Nested
    public static class SimulationTests extends ParameterizedSuite {
        public static String files="blanc";

        @BeforeAll
        public static void setupTestSuite() {
            cs.initAllDirs("testModels", "verificationModels", 
                    "refResults", "libraries/ETL_test");
            cs.processBuilder = new ProcessBuilder();
            cs.setOutputSubFolder("ETL_test");
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
