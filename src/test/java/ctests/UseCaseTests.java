package ctests;

import java.io.IOException;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import crml.compiler.CompileSettings;
import crml.compiler.ModelicaSimulationException;
import crml.compiler.OMCUtil.CompileStage;


public class UseCaseTests {

    static CompileSettings cs = new CompileSettings();

    @BeforeAll
    public static void setupTestSuite() {
        cs.setOutputSubFolder("use_cases");
        cs.initTestDir("resources/crml_tutorial/");
	}

    @DisplayName("Traffic lights use-case test")
	@Test
	void testTraficLight () throws InterruptedException, IOException, ModelicaSimulationException{
		String filePath = "traffic_light/";
		Util.runTest(filePath, cs, CompileStage.TRANSLATE);
	}

	/** @DisplayName("Pumping System use-case test")
	@Test
	void testPumpingSystem () throws InterruptedException, IOException, ModelicaSimulationException{
		String filePath = "pumping_system/";
		Util.runTest(filePath, cs, CompileStage.TRANSLATE);
	} */

	
}
