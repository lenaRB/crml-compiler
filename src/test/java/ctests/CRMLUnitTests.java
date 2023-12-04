package ctests;

import static org.junit.jupiter.api.Assertions.fail;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.concurrent.TimeUnit;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;


import crml.compiler.CRMLC;
import crml.compiler.Utilities;
import nl.altindag.log.LogCaptor;
/**
 * 
 * Test suite for running specification tests added by Audrey
 * 
 * @author Lena B
 *
 */
public class CRMLUnitTests {
	
	static LogCaptor logCaptor;
	static String testFolderIn;
	static String verifModelFolder, referenceResFolder;

	static ProcessBuilder processBuilder;

	enum CompileStage {TRANSLATE, SIMULATE, VERIFY};
	
	@BeforeAll
    public static void setupTestSuite() {
        logCaptor = LogCaptor.forClass(CRMLC.class);
        
        testFolderIn = Thread.currentThread().getContextClassLoader().getResource("testModels").getPath();
		testFolderIn = new File(testFolderIn).getAbsolutePath() + java.io.File.separator + "spec-doc-examples";

		verifModelFolder = Thread.currentThread().getContextClassLoader().getResource("verificationModels").getPath();
		verifModelFolder = new File(verifModelFolder).getAbsolutePath() + java.io.File.separator + "spec-doc-examples";
		
		referenceResFolder = Thread.currentThread().getContextClassLoader().getResource("refResults").getPath();
		referenceResFolder = new File(referenceResFolder).getAbsolutePath() + java.io.File.separator + "spec-doc-examples";
  
		processBuilder = new ProcessBuilder();
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
		
		// try compiling crml to modelica
		try {
    		
			crml.compiler.CRMLC.parse_file(filePath, "Spec.crml", Util.defaultTestRepository+"/traffic", true, true);
			
    	} catch (Exception e) {
			fail("Unable to translate " + "Traffic light example" + "to Modelica :\n" + e.getMessage());
		}
	}

	@DisplayName("Pumping System use-case test")
	@Test
	void testPumpingSystem () throws InterruptedException, IOException{
		String filePath = "resources/crml_tutorial/pumping_system/";
		
		// try compiling crml to modelica
		try {
    		
			crml.compiler.CRMLC.parse_file(filePath, "Spec.crml", Util.defaultTestRepository+"/traffic", true, true);
			
    	} catch (Exception e) {
			fail("Unable to translate " + "Traffic light example" + "to Modelica :\n" + e.getMessage());
		}
	}

	@ParameterizedTest
	@MethodSource("fileNameSource")
	void test(final String fileName) throws InterruptedException, IOException {
		runTest(fileName, Util.defaultTestRepository, CompileStage.VERIFY);
	}

	/**
	 * General method for test cases
	 * @param fileName
	 * @throws InterruptedException
	 * @throws IOException
	 */
	void runTest(final String fileName, final String outDir, final CompileStage stage) throws InterruptedException, IOException {
		
		String stripped_file_name = Utilities.stripNameEnding(fileName);

		String out_dir = Utilities.addDirToPath(outDir, stripped_file_name);

		// try compiling crml to modelica
		try {
    		
			crml.compiler.CRMLC.parse_file(testFolderIn, fileName, out_dir, true, true);
			
    	} catch (Exception e) {
			fail("Unable to translate " + fileName + "to Modelica :\n" + e.getMessage());
		}

		if (stage == CompileStage.SIMULATE || stage == CompileStage.VERIFY) {
			// .mos file for running the generated Modelica file

			String script_file_name = out_dir + java.io.File.separator + stripped_file_name + ".mos";
			String mos_text = "loadFile(\""+ Util.CRMLtoModelicaLibrary + "\"); getErrorString();" + "\n"
				+ "loadFile(\"" + stripped_file_name + ".mo"+ "\"); getErrorString();" + "\n"
				+ "checkModel("+ stripped_file_name +"); getErrorString();\n";

			// check if there is a simulation example to run the test-case
		
			File verif_model = new File(Utilities.addDirToPath(verifModelFolder, stripped_file_name ));
		
			//assertEquals(verif_model.exists(), true, "The verification model could not be found: " + stripped_file_name);
			
			if(verif_model.exists()){
			// copy files 
			File [] fnames = verif_model.listFiles();
			
			for (File f : fnames){
				Files.copy(f.toPath(), Paths.get(out_dir, f.getName()), StandardCopyOption.REPLACE_EXISTING);
				//System.err.println(f.getName());
			}
			mos_text += "loadFile(\""+ Util.CRMLLibrary + "\"); getErrorString();" + "\n";
			mos_text += "loadFile(\"" + stripped_file_name + "_verif" + ".mo"+ "\"); getErrorString();" + "\n";
			mos_text += "loadFile(\"" + stripped_file_name + "_externals" + ".mo"+ "\"); getErrorString();" + "\n";
			mos_text +=  "simulate("+ stripped_file_name + "_verif" +"); getErrorString();\n";
		
			// check if a reference file to compare to is available

			File ref_file = new File(Utilities.addDirToPath(referenceResFolder, stripped_file_name + "_verif_ref.mat"));
		
			if(ref_file.exists()){
				mos_text +=  Util.compareSimulationResults(stripped_file_name + "_verif_res.mat", ref_file.getPath());
		
		
			}
		
		BufferedWriter writer = new BufferedWriter(new FileWriter(script_file_name));
		writer.write(mos_text);
		writer.close();

		// calling omc
		processBuilder.directory(new File(out_dir));
		processBuilder.command("omc", stripped_file_name + ".mos");

		Process process = processBuilder.redirectErrorStream(true).start();

        OutputStream outputStream = process.getOutputStream();
        InputStream inputStream = process.getInputStream();
        InputStream errorStream = process.getErrorStream();

		
        boolean isFinished = process.waitFor(30, TimeUnit.SECONDS);

		String msg = Util.checkStream(inputStream);

		if(msg.contains("false"))
			fail("Unable to load Modelica model " + stripped_file_name + "\n omc fails with the following message: \n" + msg);
		

		}
		}
		}

	

}
