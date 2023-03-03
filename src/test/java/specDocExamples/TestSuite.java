package specDocExamples;

import static org.junit.jupiter.api.Assertions.fail;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;

import crml.translator.Main;
import nl.altindag.log.LogCaptor;
/**
 * 
 * Test suite for running specification tests added by Audrey
 * 
 * @author olero90
 *
 */
public class TestSuite {
	
	static LogCaptor logCaptor;
	static String testFolderIn,  outputFolder;

	static ProcessBuilder processBuilder;

	
	
	@BeforeAll
    public static void setupLogCaptor() {
        logCaptor = LogCaptor.forClass(Main.class);
        
        testFolderIn = Thread.currentThread().getContextClassLoader().getResource("testFiles").getPath();
			  testFolderIn = new File(testFolderIn).getAbsolutePath() + java.io.File.separator + "spec-doc-examples";
    
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

	@ParameterizedTest
	@MethodSource("fileNameSource")
	void test(final String fileName) throws InterruptedException, IOException {
		try {
    		
			crml.translator.Main.parse_file(testFolderIn, fileName, parameters.Values.generatedTestRepository, true);
			
    	} catch (Exception e) {
			fail("Unable to translate " + fileName + ":\n" + e.getMessage());
		}
		
		// .mos file for running the generated Modelica file

		String stripped_file_name = fileName.substring(0, fileName.lastIndexOf('.'));
		String script_file_name = parameters.Values.generatedTestRepository + java.io.File.separator + stripped_file_name + ".mos";
		String mos_text = "loadFile(\"../resources/modelica_libraries/CRMLtoModelica.mo\"); getErrorString();" + "\n"
			+ "loadFile(\"" + stripped_file_name + ".mo"+ "\"); getErrorString();" + "\n"
			+ "checkModel("+ stripped_file_name +"); getErrorString();";

			BufferedWriter writer = new BufferedWriter(new FileWriter(script_file_name));
			writer.write(mos_text);
			writer.close();
			
		// calling omc
		processBuilder.directory(new File(parameters.Values.generatedTestRepository));
		processBuilder.command("omc", stripped_file_name + ".mos");

		Process process = processBuilder.redirectErrorStream(true).start();

        OutputStream outputStream = process.getOutputStream();
        InputStream inputStream = process.getInputStream();
        InputStream errorStream = process.getErrorStream();

		
        boolean isFinished = process.waitFor(30, TimeUnit.SECONDS);

		String msg = checkStream(inputStream);

		if(msg.contains("false"))
			fail("Unable to load Modelica model " + stripped_file_name + "\n omc fails with the following message: \n" + msg);
		

	}

	private static List<String> fileNameSource() throws IOException {
		
		List<String> fileList;
		
		try (Stream<Path> list = Files.list(Paths.get(testFolderIn))) {
			fileList = list.map(path -> path.getFileName()
					.toString())
					.filter(name -> name.endsWith(".crml")).collect(Collectors.toList());
			fileList.forEach(System.out::println);
		}
		
		return fileList;
	}

	private static String checkStream(InputStream inputStream) throws IOException {

		StringBuffer buffer = new StringBuffer();
        try(BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream))) {
            String line;
            while((line = bufferedReader.readLine()) != null) {
                buffer.append(line);
            }

        }

		return buffer.toString();
	}

}
