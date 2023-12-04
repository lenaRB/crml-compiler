package ctests;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Util {
	public static final String defaultTestRepository = "testSuiteGenerated";
	public static final String CRMLtoModelicaLibrary = "../../resources/modelica_libraries/CRMLtoModelica.mo";
	public static final String CRMLLibrary = "../../resources/modelica_libraries/CRML.mo";

	/**
	 * Method for comparing omc simulation results to reference files
	 * @param res_file simulation result file
	 * @param ref_file reference result file
	 * @return code for comparsion script
	 */
	public static String compareSimulationResults(String res_file, String ref_file){

		String loadRes =
			"arrActual := readSimulationResultVars(\"" + res_file + "\"); getErrorString();\n" +
			"arrExpect := readSimulationResultVars(\"" + ref_file + "\"); getErrorString();\n";

		String helper_functions =
		"loadString(\" \n" +
		"function stringIntersection \n" +
		"	input String[:] a1; \n" +
		"	input String[:] a2; \n" + 
		"	output Integer last = 0; \n" +
		"	output String[size(a2, 1)] o = fill(\\\"\\\", size(a2, 1)); \n"  +
		"protected \n" +
		"Integer i, j, k = 0; \n" +
		"algorithm \n" +
		  "for i in 1:size(a1, 1) loop\n" +
			"for j in 1:size(a2, 1) loop\n" +
			   "if a1[i] == a2[j] then\n" +
				 "k := k + 1;\n" +
				 "o[k] := a1[i];\n" +
			   "end if;\n" +
			 "end for;\n" +
		  "end for;\n" +
		  "last := k;\n" +
		"end stringIntersection;\n" +
		"function trimArray\n" +
		  "input Integer sz;\n" +
		  "input String[:] a1;\n" +
		  "output String[sz] o = a1[1:sz];\n" +
		"end trimArray;\n" +
		"\"); getErrorString();\n";

		String compare = 
		"(sz, set) := stringIntersection(arrActual, arrExpect);\n" +
		"sz; \n" +
		"set; \n" +
		"intersect := trimArray(sz, set); \n" +
		"diffSimulationResults(\n\"" + res_file + "\", \"" + ref_file + "\" \n, \"diff\", \n" +
        "vars = intersect); getErrorString();\n";

		return loadRes + helper_functions + compare;
		
	}
	
	public static String checkStream(InputStream inputStream) throws IOException {

		StringBuffer buffer = new StringBuffer();
        try(BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream))) {
            String line;
            while((line = bufferedReader.readLine()) != null) {
                buffer.append(line);
            }

        }

		return buffer.toString();
	}

	public static List<String> fileNameSource(String testFolderIn) throws IOException {
		
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
