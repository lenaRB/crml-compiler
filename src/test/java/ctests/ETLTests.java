package ctests;

import java.io.IOException;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.params.provider.MethodSource;

import org.junit.jupiter.params.ParameterizedTest;

import ctests.Util.CompileStage;

public class ETLTests  {
    @Nested
    static class SimulationTests extends ParameterizedSuite {

        @BeforeAll
        public static void setupTestSuite() {
            cs.initAllDirs("testModels", "verificationModels", 
                    "refResults", "libraries/ETL_test");
            cs.processBuilder = new ProcessBuilder();
            cs.setOutputSubFolder("ETL_test");
        }
    
    
        @ParameterizedTest
        @MethodSource("fileNameSource")
        public void simulateTestFile(final String fileName) throws InterruptedException, IOException {
            Util.runTest(fileName, cs, CompileStage.TRANSLATE);
        }
    }
        
       

}
