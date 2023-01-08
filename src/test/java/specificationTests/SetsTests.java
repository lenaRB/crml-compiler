package specificationTests;

import static org.junit.jupiter.api.Assertions.fail;

import java.io.File;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import crml.translator.Main;
import nl.altindag.log.LogCaptor;

public class SetsTests {
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

	    @DisplayName("Testing Sets")
	    @ParameterizedTest
	    @ValueSource(strings = {"Sets/NegationSet.crml"})
	    void testPrimitiveTypes(String fileName) {
	    	try {
	    		
				crml.translator.Main.parse_file(testFolderIn, fileName, "tmpCRML", true);
				
	    	} catch (Exception e) {
				fail("Unable to translate " + fileName + ":\n" + e.getMessage());
			}
	    	
	}	
	
	
}
