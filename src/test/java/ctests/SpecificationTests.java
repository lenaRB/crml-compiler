package ctests;

import java.io.IOException;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;

import crml.compiler.ModelicaSimulationException;
import crml.compiler.OMCUtil.CompileStage;

/**
 * 
 * Test suite for running specification tests added by Audrey
 * 
 * @author Lena B
 *
 */
public class SpecificationTests {

	@Nested
    static class VerificationTests extends ParameterizedSuite {

 @BeforeAll
        public static void setupTestSuite() { 
		cs.initAllDirs("testModels", "verificationModels", 
				"refResults", "spec-doc-examples");
		cs.processBuilder = new ProcessBuilder();
		cs.setOutputSubFolder("spec-doc-examples");
	    }

        @ParameterizedTest
	    @MethodSource("fileNameSource")
	    public void simulateTestFile(final String fileName) throws InterruptedException, IOException, ModelicaSimulationException {
		    Util.runTest(fileName, cs, CompileStage.VERIFY);
	    }
    }

    @Nested
    static class TranslationTests extends ParameterizedSuite {
        
        @BeforeAll
        public static void setupTestSuite() { 
		cs.initAllDirs("testModels", "verificationModels", 
				"refResults", "spec-doc-examples");
		cs.processBuilder = new ProcessBuilder();
		cs.setOutputSubFolder("spec-doc-examples");
	    }

       @ParameterizedTest
	    @MethodSource("fileNameSource")
	    public void simulateTestFile(final String fileName) throws InterruptedException, IOException, ModelicaSimulationException {
		    Util.runTest(fileName, cs, CompileStage.TRANSLATE);
	    }
    }

	

}
