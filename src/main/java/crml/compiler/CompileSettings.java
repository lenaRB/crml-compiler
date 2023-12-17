package crml.compiler;

import java.io.File;
import java.net.URL;

public class CompileSettings {
    
    public String testFolderIn;
	public String verifModelFolder;
    public String referenceResFolder;
    public String outputFolder = defaultOutputRoot; // if not set explicitly 

    static final String defaultOutputRoot = "build/testSuiteGenerated";
	static final String CRMLtoModelicaLibrary = "resources/modelica_libraries/CRMLtoModelica.mo";
	static final String CRMLLibrary = "resources/modelica_libraries/CRML.mo";


    public ProcessBuilder processBuilder; // used for running omc commands

    public void initAllDirs(String testF, String verifF, String refResF, String subFolder){
        String sf =  java.io.File.separator + subFolder;
        testFolderIn = getResourcePath(testF) + sf;
        verifModelFolder = getResourcePath(verifF) + sf;
        referenceResFolder = getResourcePath(refResF) + sf;
    }

     public void initTestDir(String testF){
        
        testFolderIn = getResourcePath(testF);
      
    }

    /**
     * Puts the tests in a sub-folder in the default putput directory
     */
    public void setOutputSubFolder(String subFolder){
        outputFolder = defaultOutputRoot + java.io.File.separator + subFolder;
    }

    private static String getResourcePath(String dirName){
        System.out.println(Thread.currentThread().getContextClassLoader().toString());

        URL url = Thread.currentThread().getContextClassLoader().getResource(dirName);
        String path;
        
            if(url != null) {
                path = url.getPath();
                path = Utilities.removeWindowsDriveLetter(path);
            } else {
                String dir = "src/test/resources/" + dirName; 
                path = new File(dir).getAbsolutePath();
            }            
		return path;
	}
}
