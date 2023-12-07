package ctests;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;

import ctests.Util.CompileStage;

/**
 * 
 * Test suite for running specification tests added by Audrey
 * 
 * @author Lena B
 *
 */
public class TranslateSpecificationTests {
	
	//static LogCaptor logCaptor;
	
	static CompileSettings cs = new CompileSettings();
	
	@BeforeAll
    public static void setupTestSuite() {
        //logCaptor = LogCaptor.forClass(CRMLC.class);

		cs.initAllDirs("testModels", "verificationModels", 
				"refResults", "spec-doc-examples");
		cs.processBuilder = new ProcessBuilder();
		cs.setOutputSubFolder("spec-doc-examples");
	}

	@ParameterizedTest
	@MethodSource("fileNameSource")
	void test(final String fileName) throws InterruptedException, IOException {
		Util.runTest(fileName, cs, CompileStage.TRANSLATE);
	}

	public static List<String> fileNameSource() throws IOException {
		List<String> fileList;
		
		try (Stream<Path> list = Files.list(Paths.get(cs.testFolderIn))) {
			fileList = list.map(path -> path.getFileName()
					.toString())
					.filter(name -> name.endsWith(".crml")).collect(Collectors.toList());
			fileList.forEach(System.out::println);
		}		
		return fileList;
	}

}
