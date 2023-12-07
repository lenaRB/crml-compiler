package ctests;

import static org.junit.jupiter.api.Assertions.assertAll;

import java.io.IOException;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import ctests.Util.CompileStage;

public class UseCaseTests {

    static CompileSettings cs = new CompileSettings();

    @BeforeAll
    public static void setupTestSuite() {
        cs.setOutputSubFolder("use_cases");
        cs.initTestDir("resources/crml_tutorial/");
	}

	@DisplayName("Pumping System use-case test")
	@Test
	public void testAb() throws InterruptedException, IOException{
		assert(true);
	}

    @DisplayName("Traffic lights use-case test")
	@Test
	void testTraficLight () throws InterruptedException, IOException{
		String filePath = "traffic_light/";
		Util.runTest(filePath, cs, CompileStage.TRANSLATE);
	}

	@DisplayName("Pumping System use-case test")
	@Test
	void testPumpingSystem () throws InterruptedException, IOException{
		String filePath = "pumping_system/";
		Util.runTest(filePath, cs, CompileStage.TRANSLATE);
	}

	
}
