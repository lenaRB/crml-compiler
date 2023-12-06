package ctests;

import java.io.IOException;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import crml.compiler.CRMLC;
import ctests.Util.CompileStage;
import nl.altindag.log.LogCaptor;

public class UseCaseTests {

    static LogCaptor logCaptor;
    static CompileSettings cs = new CompileSettings();

    @BeforeAll
    public static void setupTestSuite() {
        logCaptor = LogCaptor.forClass(CRMLC.class);
	}

    @AfterEach
    public void clearLogs() {
        logCaptor.clearLogs();
    }
    
    @AfterAll
    public static void tearDown() {
        logCaptor.close();
    } 

    @DisplayName("Traffic lights use-case test")
	@Test
	void testTraficLight () throws InterruptedException, IOException{
		String filePath = "resources/crml_tutorial/traffic_light/";
		
		Util.runTest(filePath, cs, CompileStage.TRANSLATE);
	}

	@DisplayName("Pumping System use-case test")
	@Test
	void testPumpingSystem () throws InterruptedException, IOException{
		String filePath = "resources/crml_tutorial/pumping_system/";
		
		Util.runTest(filePath, cs, CompileStage.TRANSLATE);
	}
}
