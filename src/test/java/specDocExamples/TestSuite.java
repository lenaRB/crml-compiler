package specDocExamples;

import static org.junit.jupiter.api.Assertions.fail;

import java.io.File;
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
	
	@BeforeAll
    public static void setupLogCaptor() {
        logCaptor = LogCaptor.forClass(Main.class);
        
        testFolderIn = Thread.currentThread().getContextClassLoader().getResource("testFiles").getPath();
			  testFolderIn = new File(testFolderIn).getAbsolutePath() + java.io.File.separator + "spec-doc-examples";
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
	void test(final String fileName) {
		try {
    		
			crml.translator.Main.parse_file(testFolderIn, fileName, "tmpCRML", true);
			
    	} catch (Exception e) {
			fail("Unable to translate " + fileName + ":\n" + e.getMessage());
		}
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
}
