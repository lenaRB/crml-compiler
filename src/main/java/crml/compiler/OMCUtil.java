package crml.compiler;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.concurrent.TimeUnit;

/**
 * Wrapper for OpenModelica compiler calls
 */
public class OMCUtil {
    public enum CompileStage {TRANSLATE, SIMULATE, VERIFY};

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

    public static String generateSimulationScript(String stripped_file_name, String verifModelFolder, String out_dir) throws IOException{
        // .mos file for running the generated Modelica file
		String mos_text = "loadFile(\""+ CompileSettings.CRMLtoModelicaLibrary + "\"); getErrorString();" + "\n"
				+ "loadFile(\"" + stripped_file_name + ".mo"+ "\"); getErrorString();" + "\n"
				+ "checkModel("+ stripped_file_name +"); getErrorString();\n";

		// check if there is a simulation example to run the test-case
		
		File verif_model = new File(Utilities.addDirToPath(verifModelFolder, stripped_file_name ));
		
		if(verif_model.exists()){
			// copy files 
			File [] fnames = verif_model.listFiles();
			
			for (File f : fnames){
				Files.copy(f.toPath(), Paths.get(out_dir, f.getName()), StandardCopyOption.REPLACE_EXISTING);
				//System.err.println(f.getName());
			}
			mos_text += "loadFile(\""+ CompileSettings.CRMLLibrary + "\"); getErrorString();" + "\n";
			mos_text += "loadFile(\"" + stripped_file_name + "_verif" + ".mo"+ "\"); getErrorString();" + "\n";
			mos_text += "loadFile(\"" + stripped_file_name + "_externals" + ".mo"+ "\"); getErrorString();" + "\n";
			mos_text +=  "simulate("+ stripped_file_name + "_verif" +"); getErrorString();\n";
        }

        return mos_text;
    }

    public static String compile(String stripped_file_name, String out_dir, CompileSettings cs) throws ModelicaSimulationException, IOException, InterruptedException{
    
		String script_file_name = out_dir + java.io.File.separator + stripped_file_name + ".mos";
		
		String mos_text = OMCUtil.generateSimulationScript(stripped_file_name,cs.verifModelFolder, out_dir);
		
		// check if a reference file to compare to is available

		File ref_file = new File(Utilities.addDirToPath(cs.referenceResFolder, stripped_file_name + "_verif_ref.mat"));
		
		if(ref_file.exists()){
			mos_text +=  OMCUtil.compareSimulationResults(stripped_file_name + "_verif_res.mat", ref_file.getPath());
		}
		
		BufferedWriter writer = new BufferedWriter(new FileWriter(script_file_name));
		writer.write(mos_text);
		writer.close();

		// calling omc
		cs.processBuilder.directory(new File(out_dir));
		cs.processBuilder.command("omc", stripped_file_name + ".mos");

		Process process = cs.processBuilder.redirectErrorStream(true).start();

        OutputStream outputStream = process.getOutputStream();
        InputStream inputStream = process.getInputStream();
        InputStream errorStream = process.getErrorStream();
		
        boolean isFinished = process.waitFor(30, TimeUnit.SECONDS);

		if(!isFinished)
		 throw new ModelicaSimulationException(stripped_file_name + " simulation timed out");

		String msg = checkStream(inputStream);

        return msg;
		
	}

    public static String checkStream(InputStream inputStream) throws IOException {

		StringBuffer buffer = new StringBuffer();
        try(BufferedReader bufferedReader = new BufferedReader(
                new InputStreamReader(inputStream))) {
            String line;
            while((line = bufferedReader.readLine()) != null) {
                buffer.append(line);
            }

        }

		return buffer.toString();
	}
}
