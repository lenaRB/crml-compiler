package useCaseTests;

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

public class useCaseTest {
  
   static LogCaptor logCaptor;
   static String testFolder,  outputFolder;   
   
   @BeforeAll
      public static void setupLogCaptor() {
          logCaptor = LogCaptor.forClass(Main.class);
          
          testFolder = Thread.currentThread().getContextClassLoader().getResource("testFiles").getPath();
          testFolder = new File(testFolder).getAbsolutePath() + java.io.File.separator + "use-cases";
      }  


      @AfterEach
      public void clearLogs() {
          logCaptor.clearLogs();
      }
      
      @AfterAll
      public static void tearDown() {
          logCaptor.close();
      } 

      @DisplayName("Testing use-cases")
      @ParameterizedTest
      @ValueSource(strings = {"requirements_tank.crml", 
          "TwoTanks.crml", 
          "Contract.crml"})
      void testPrimitiveTypes(String fileName) {
        try {
          
        crml.translator.Main.parse_file(testFolder, fileName, "tmpCRML", true);
        
      } catch (Exception e) {
        fail("Unable to translate " + fileName + ":\n" + e.getMessage());
      }
        
  }  
  

}
