package ctests;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import crml.compiler.CompileSettings;

public class ParameterizedSuite {

    public static CompileSettings cs = new CompileSettings();

    /**
	 * Method for feeding the list of files into the parametrized test
	 * @return
	 * @throws IOException
	 */
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