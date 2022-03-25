package crml.translator;

import java.util.List;
import java.util.Vector;

public class Signature {
	
	enum Type {
		FUNCTION,
		OPERATOR,
		BLOCK
	}
	
	List <String> variable_names;
	List <String> variable_types;
	String function_name;
	String return_name;
	String return_type;
	Boolean wrapBoolean; // needs to be wrapped into a boolean return
	Type 	mtype = Type.BLOCK; // maps to a block by default

	public Signature() {
		variable_names = new Vector<String>();
		variable_types = new Vector<String>();
	}

	public Signature(String name, List<String> params, String return_t, Type t) {
		this.function_name = name;
		this.mtype = t;
		this.variable_types = params;
		this.return_type = return_t;
	}
	
	public Signature(String name, List<String> params, List<String> param_names, String return_t, Type t) {
		this.function_name = name;
		this.mtype = t;
		this.variable_types = params;
		this.variable_names= param_names;
		this.return_type = return_t;
	}
	
	public Signature(String name, List<String> params, List<String> param_names, String return_t, Type t, boolean warp) {
		this.function_name = name;
		this.mtype = t;
		this.variable_types = params;
		this.variable_names= param_names;
		this.return_type = return_t;
	}
}
