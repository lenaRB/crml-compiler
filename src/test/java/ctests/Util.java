package ctests;

import static org.junit.jupiter.api.Assertions.fail;
import java.io.IOException;

import crml.compiler.CompileSettings;
import crml.compiler.ModelicaSimulationException;
import crml.compiler.OMCUtil;
import crml.compiler.OMCmsg;
import crml.compiler.Utilities;
import crml.compiler.OMCUtil.CompileStage;

import java.io.File;

import static j2html.TagCreator.*;

public class Util {


	/**
	 * General method for test cases
	 * @param fileName
	 * @throws InterruptedException
	 * @throws IOException
	 * @throws ModelicaSimulationException
	 */
	static OMCmsg runTest( final String fileName, 
						final CompileSettings cs,
						final CompileStage stage) 
							throws InterruptedException, IOException, ModelicaSimulationException {
		
		String stripped_file_name = Utilities.stripNameEndingAndPath(fileName);
		String out_dir = Utilities.addDirToPath(cs.outputFolder, stripped_file_name);

		// try compiling crml to modelica
		try {
    		
			crml.compiler.CRMLC.parse_file(cs.testFolderIn, fileName, out_dir, 
				true, false, true, stripped_file_name, false);
			
    	} catch (Exception e) {
			fail("Unable to translate " + fileName + " to Modelica\n", e);
		}

		if (stage == CompileStage.TRANSLATE) {
			String fullName = out_dir + java.io.File.separator + stripped_file_name + ".mo";
			File mo_file = new File (fullName);
			String files =  p(join(a(fullName).withHref(mo_file.toURI().toString()), br())).render();
			System.out.println("STAGE + " + CompileStage.TRANSLATE);
			return new OMCmsg(files, "");
		}
			
		OMCmsg ret = OMCUtil.compile(stripped_file_name, out_dir, cs);

		return ret;
		
		}

		
}
