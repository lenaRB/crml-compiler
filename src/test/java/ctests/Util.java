package ctests;

import static org.junit.jupiter.api.Assertions.fail;
import java.io.IOException;

import crml.compiler.CompileSettings;
import crml.compiler.ModelicaSimulationException;
import crml.compiler.OMCUtil;
import crml.compiler.Utilities;
import crml.compiler.OMCUtil.CompileStage;

public class Util {


	/**
	 * General method for test cases
	 * @param fileName
	 * @throws InterruptedException
	 * @throws IOException
	 * @throws ModelicaSimulationException
	 */
	static void runTest( final String fileName, 
						final CompileSettings cs,
						final CompileStage stage) 
							throws InterruptedException, IOException, ModelicaSimulationException {
		
		String stripped_file_name = Utilities.stripNameEnding(fileName);
		String out_dir = Utilities.addDirToPath(cs.outputFolder, stripped_file_name);

		// try compiling crml to modelica
		try {
    		
			crml.compiler.CRMLC.parse_file(cs.testFolderIn, fileName, out_dir, 
				true, true, true);
			
    	} catch (Exception e) {
			fail("Unable to translate " + fileName + "to Modelica :\n" + e.getMessage());
		}

		if (stage == CompileStage.TRANSLATE) 
			return;

		String msg = OMCUtil.compile(stripped_file_name, out_dir, cs);

		if(msg.contains("false"))
			fail("Unable to run Modelica script " + Utilities.getAbsolutePath(stripped_file_name) + ".mos" +
				"\n omc fails with the following message: \n" + msg);
		}
}
