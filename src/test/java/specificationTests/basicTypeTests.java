package specificationTests;

import nl.altindag.log.LogCaptor;
import java.io.File;

import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import crml.translator.Main;

 class specificationTests {
	 
	 static LogCaptor logCaptor;
	 static String testFolderIn,  outputFolder;
	 
	 @BeforeAll
	    public static void setupLogCaptor() {
	        logCaptor = LogCaptor.forClass(Main.class);
	        
	        testFolderIn = Thread.currentThread().getContextClassLoader().getResource("testFiles").getPath();
				  testFolderIn = new File(testFolderIn).getAbsolutePath() + java.io.File.separator + "specification";
	    }
	 
	 	@Test
	 	@DisplayName("Check test suite is running")
		void testDummy() {		
	    	assert(true);
		}	


	    @AfterEach
	    public void clearLogs() {
	        logCaptor.clearLogs();
	    }
	    
	    @AfterAll
	    public static void tearDown() {
	        logCaptor.close();
	    } 

	    @DisplayName("Testing primitive type translation")
	    @ParameterizedTest
	    @ValueSource(strings = {"PrimitiveDataTypes/IntegerPrimitives.crml", 
	    		"PrimitiveDataTypes/BooleanPrimitives.crml", 
	    		"PrimitiveDataTypes/RealPrimitives.crml"})
	    void testPrimitiveTypes(String fileName) {
	    	try {
	    		
				crml.translator.Main.parse_file(testFolderIn, fileName, "tmpCRML", true);
				
	    	} catch (Exception e) {
				fail("Unable to translate " + fileName + ":\n" + e.getMessage());
			}
	    	
	}	
	
	

}
