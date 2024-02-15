package ctests;

import java.io.IOException;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.params.provider.MethodSource;

import crml.compiler.ModelicaSimulationException;
import crml.compiler.TestListener;
import crml.compiler.OMCUtil.CompileStage;

import org.junit.jupiter.params.ParameterizedTest;


public class ETLTests  {
    String files = "Unable to produce file list"; // default message, replaced for each test
    

    @Nested
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
            files = Util.runTest(fileName, cs, CompileStage.TRANSLATE);
        }
    }

    @Nested
    public static class SimulationTests extends ParameterizedSuite {
        public static String files;

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
            files = Util.runTest(fileName, cs, CompileStage.SIMULATE);
        }

    }
}
