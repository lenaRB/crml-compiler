package specificationTests;

import static org.junit.jupiter.api.Assertions.fail;

import java.io.File;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import crml.translator.Main;
import nl.altindag.log.LogCaptor;

public class ClockedTests {
	 static LogCaptor logCaptor;
	 static String testFolderIn,  outputFolder;
	 
	 @BeforeAll
	    public static void setupLogCaptor() {
	        logCaptor = LogCaptor.forClass(Main.class);
	        
	        testFolderIn = Thread.currentThread().getContextClassLoader().getResource("testFiles").getPath();
				  testFolderIn = new File(testFolderIn).getAbsolutePath() + java.io.File.separator + "specification";
	    }
	 


	    @AfterEach
	    public void clearLogs() {
	        logCaptor.clearLogs();
	    }
	    
	    @AfterAll
	    public static void tearDown() {
	        logCaptor.close();
	    } 

	    @DisplayName("Testing clock, period, event")
	    @ParameterizedTest
	    @ValueSource(strings = {"Templates/LogicalTemplate.crml", 
	    		"Templates/UserOp.crml"})
	    void testPrimitiveTypes(String fileName) {
	    	try {
	    		
				crml.translator.Main.parse_file(testFolderIn, fileName, parameters.Values.generatedTestRepository, true);
				
	    	} catch (Exception e) {
				fail("Unable to translate " + fileName + ":\n" + e.getMessage());
			}
	    	
	}	
	
	
}
