package ctests;

import java.io.File;

public class CompileSettings {
    
    String testFolderIn;
	String verifModelFolder;
    String referenceResFolder;
    String outputFolder = defaultOutputRoot; // if not set explicitly 

    static final String defaultOutputRoot = "build/testSuiteGenerated";
	static final String CRMLtoModelicaLibrary = "../../resources/modelica_libraries/CRMLtoModelica.mo";
	static final String CRMLLibrary = "../../resources/modelica_libraries/CRML.mo";


    ProcessBuilder processBuilder; // used for running omc commands

    public void initAllDirs(String testF, String verifF, String refResF, String subFolder){
        String sf =  java.io.File.separator + subFolder;
        testFolderIn = getResourcePath(testF) + sf;
        verifModelFolder = getResourcePath(verifF) + sf;
        referenceResFolder = getResourcePath(refResF) + sf;
    }

    /**
     * Puts the tests in a sub-folder in the default putput directory
     */
    public void setOutputSubFolder(String subFolder){
        outputFolder = defaultOutputRoot + java.io.File.separator + subFolder;
    }

    private static String getResourcePath(String dirName){
		String name = Thread.currentThread().getContextClassLoader()
            .getResource(dirName).getPath();
		return new File(name).getAbsolutePath();
	}
}
