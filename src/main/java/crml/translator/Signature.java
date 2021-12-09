package crml.translator;

import java.util.Vector;

public class Signature {
	Vector <String> variable_names;
	Vector <String> variable_types;
	String return_name;
	String return_type;

	public Signature() {
		variable_names = new Vector<String>();
		variable_types = new Vector<String>();
	}
}
