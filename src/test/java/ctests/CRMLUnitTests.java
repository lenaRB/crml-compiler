package ctests;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;


import crml.compiler.CRMLC;
import ctests.Util.CompileStage;
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
	
	static CompileSettings cs = new CompileSettings();
	
	@BeforeAll
    public static void setupTestSuite() {
        logCaptor = LogCaptor.forClass(CRMLC.class);

		cs.initAllDirs("testModels", "verificationModels", 
				"refResults", "spec-doc-examples");
		cs.processBuilder = new ProcessBuilder();
		cs.setOutputSubFolder("spec-doc-examples");
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
		Util.runTest(fileName, cs, CompileStage.VERIFY);
	}

	public static List<String> fileNameSource() throws IOException {
		List<String> fileList;
		
		System.out.println("HERE  ");
		try (Stream<Path> list = Files.list(Paths.get(cs.testFolderIn))) {
			fileList = list.map(path -> path.getFileName()
					.toString())
					.filter(name -> name.endsWith(".crml")).collect(Collectors.toList());
			fileList.forEach(System.out::println);
		}		
		return fileList;
	}

}
