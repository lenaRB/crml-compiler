package crml.compiler;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.concurrent.TimeUnit;

import static j2html.TagCreator.*;

/**
 * Wrapper for OpenModelica compiler calls
 */
public class OMCUtil {
    public enum CompileStage {TRANSLATE, SIMULATE, VERIFY};

    /**
   * Method for comparing omc simulation results to reference files
   * @param res_file simulation result file
   * @param ref_file reference result file
   * @return code for comparison script
   */
  public static String compareSimulationResults(String res_file, String ref_file){

    String loadRes =
      "arrActual := readSimulationResultVars(\"" + Utilities.toUnixPath(res_file) + "\"); getErrorString();\n" +
      "arrExpect := readSimulationResultVars(\"" + Utilities.toUnixPath(ref_file) + "\"); getErrorString();\n";

    String helper_functions =
    "loadString(\" \n" +
    "function stringIntersection \n" +
    "  input String[:] a1; \n" +
    "  input String[:] a2; \n" + 
    "  output Integer last = 0; \n" +
    "  output String[size(a2, 1)] o = fill(\\\"\\\", size(a2, 1)); \n"  +
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
    "diffSimulationResults(\n\"" + Utilities.toUnixPath(res_file) + "\", \"" + Utilities.toUnixPath(ref_file) + "\" \n, \"diff\", \n" +
        "vars = intersect); getErrorString();\n";

    return loadRes + helper_functions + compare;
    
  }

  public static File getCRMLToModelicaFile() {
    // check if we are where we should
    String startedFrom = System.getProperty("user.dir");
    return new File(startedFrom + java.io.File.separator + CompileSettings.CRMLtoModelicaLibrary);
  }

  public static File getCRMLLibrary() {
    // check if we are where we should
    String startedFrom = System.getProperty("user.dir");
    return new File(startedFrom + java.io.File.separator + CompileSettings.CRMLLibrary);
  }

  public static String generateSimulationScript(String stripped_file_name, String verifModelFolder, String out_dir) throws IOException {
    File crml2Modelica = getCRMLToModelicaFile();
    File crmlLib = getCRMLLibrary();

    if (!crml2Modelica.exists()) 
      throw new IOException("Could not find: " + Utilities.toUnixPath(crml2Modelica.getAbsolutePath()));
   
    if (!crmlLib.exists()) 
      throw new IOException("Could not find: " + Utilities.toUnixPath(crmlLib.getAbsolutePath()));
      

    // .mos file for running the generated Modelica file
    String mos_text = 
      "cd();\n" +
      "if not loadFile(\""+ Utilities.toUnixPath(crml2Modelica.getAbsolutePath()) + "\") then\n" +
      "  print(getErrorString());\n" +
      "  exit(1);\n" +
      "end if;\n" + 
      "getErrorString();\n" +
      "if not loadFile(\"" + stripped_file_name + ".mo"+ "\") then\n" +
      "  print(getErrorString());\n" +
      "  exit(1);\n" +
      "end if;\n" +
      "getErrorString();\n" +
      "checkModel("+ stripped_file_name +");\n" +
      "getErrorString();\n";
   
    // check if there is a simulation example to run the test-case
    File verif_model = new File(Utilities.addDirToPath(verifModelFolder, stripped_file_name));
    
    if(verif_model.exists()) {
      // copy files 
      File [] fnames = verif_model.listFiles();
      
      for (File f : fnames) {
        Files.copy(f.toPath(), Paths.get(out_dir, f.getName()), StandardCopyOption.REPLACE_EXISTING);
        //System.err.println(f.getName());
      }
      mos_text += "if not loadFile(\""+ Utilities.toUnixPath(crmlLib.getAbsolutePath()) + "\") then\n" +
                  "  print(getErrorString());\n" +
                  "  exit(1);\n" +
                  "end if;\n" + 
                  "getErrorString();\n";
      mos_text += "if not loadFile(\"" + stripped_file_name + "_verif" + ".mo"+ "\") then\n" +
                  "  print(getErrorString());\n" +
                  "  exit(1);\n" +
                  "end if;\n" + 
                 "getErrorString();\n";
      mos_text += "if not loadFile(\"" + stripped_file_name + "_externals" + ".mo"+ "\") then\n" +
                  "  print(getErrorString());\n" +
                  "  exit(1);\n" +
                  "end if;\n" + 
                  "getErrorString();\n";
      mos_text +=  "simulate("+ stripped_file_name + "_verif" +"); getErrorString();\n";
    } else // try simulating the model on its own (the non_external ones)
      mos_text +=  "simulate("+ stripped_file_name +"); getErrorString();\n";

      return mos_text;
  }

    public static OMCmsg compile(String stripped_file_name, String out_dir, CompileSettings cs) throws ModelicaSimulationException, IOException, InterruptedException {
    
    String filePrefix = out_dir + java.io.File.separator + stripped_file_name;
    String script_file_name =  filePrefix + ".mos";
    
    String mos_text = OMCUtil.generateSimulationScript(stripped_file_name, cs.verifModelFolder, out_dir);
    
    // check if a reference file to compare to is available

    File ref_file = new File(Utilities.addDirToPath(cs.referenceResFolder, stripped_file_name + "_verif_ref.mat"));
    
    if(ref_file.exists()){
      mos_text +=  OMCUtil.compareSimulationResults(stripped_file_name + "_verif_res.mat", ref_file.getPath());
    }
   
    
    BufferedWriter writer = new BufferedWriter(new FileWriter(script_file_name));
    writer.write(mos_text);
    writer.close();

    String omc = locateOMC();
    
    // calling omc
    cs.processBuilder.directory(new File(out_dir));
    cs.processBuilder.command(omc, stripped_file_name + ".mos");

    Process process = cs.processBuilder.redirectErrorStream(true).start();

    InputStream inputStream = process.getInputStream();
    // OutputStream outputStream = process.getOutputStream();
    // Not needed because we redirected via redirectErrorStream
    // InputStream errorStream = process.getErrorStream();
    
    String msg = p(join("Files", br())).render();
    File mos_file = new File(script_file_name);
    File mo_file = new File (filePrefix + ".mo");
   
    
    msg +=  p(join(
            a(mos_file.toString()).withHref(mos_file.toURI().toString()), br(),
            a(mo_file.toString()).withHref(mo_file.toURI().toString()), br(),
            a(getCRMLToModelicaFile().toString()).withHref(getCRMLToModelicaFile().toURI().toString()), br(),
            a(getCRMLLibrary().getPath().toString()).withHref(getCRMLLibrary().toURI().toString()), br())).render();
 
    String omcOutput = checkInputStream(inputStream);

		// wait for is *AFTER* we consume the output, otherwise process is blocked on output write!
    boolean isFinished = process.waitFor(30, TimeUnit.SECONDS);
    if (!isFinished)
       throw new ModelicaSimulationException("Simulation timed out [30 seconds]: " 	+ omc + stripped_file_name + ".mos");

    return new OMCmsg(msg,omcOutput);
    
  }

    public static String checkInputStream(InputStream inputStream) throws IOException {

    StringBuffer buffer = new StringBuffer();
        try(BufferedReader bufferedReader = new BufferedReader(
                new InputStreamReader(inputStream))) {
            String line;
            while((line = bufferedReader.readLine()) != null) {
                buffer.append(line + "\n");
            }

        }

    return buffer.toString();
  }

  public static String locateOMC() {
    String omc = "omc";
    // check where is OMC
    if (Utilities.isWindows())
      omc = omc + ".exe";
      File omcFile = Utilities.getFileInPath(omc);
    if (omcFile != null) {
      return omcFile.getAbsolutePath();
    }

    // check if we have an OPENMODELICAHOME defined!
        String omhome = System.getenv("OPENMODELICAHOME");
    if (omhome != null) {
      File om = new File(omhome + File.separator + "bin" + File.separator + omc);
      if (om.exists())
        return om.getAbsolutePath(); // FIXME - check return for 0
    }
        // failed miserably to detect OMC, have a leap of faith   
    System.out.println("Could not detect OMC, searched in:\n\t$PATH=[" + System.getenv("PATH") + "]" + "\nand in:\n\t$OPENMODELICAHOME/bin/ = [" + omhome + "]");
        return omc;
    }
}
