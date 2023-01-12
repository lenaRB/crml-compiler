package crml.translator;

import java.util.Arrays;
import java.util.List;
import java.util.Vector;

public class Signature {
	
	enum Type {
		FUNCTION,
		OPERATOR,
		BLOCK,
		SET_OP //arrays in set operators need to be expanded 
	}
	
	List <String> variable_names;
	List <String> variable_types;
	List <Boolean> variable_is_set; // which variables are sets
	
	String function_name;
	String return_name;
	String return_type;
	Boolean wrapBoolean; // needs to be wrapped into a boolean return
	Type 	mtype = Type.BLOCK; // maps to a block by default
	Boolean is_return_set;
	String temp_var_name; // sets a name to avoid variable names like '==0'

	public Signature() {
		variable_names = new Vector<String>();
		variable_types = new Vector<String>();
	}

	public Signature(String name, List<String> params, String return_t, Type t) {
		this.function_name = name;
		this.mtype = t;
		this.variable_types = params;
		this.return_type = return_t;
		if(params.size()==1)
			this.variable_is_set = Arrays.asList(false);
		else
			this.variable_is_set = Arrays.asList(false, false);
		this.is_return_set=false;
	}
	
	public Signature(String name, List<String> params, List<String> param_names, String return_t, Type t) {
		this.function_name = name;
		this.mtype = t;
		this.variable_types = params;
		this.variable_names= param_names;
		this.return_type = return_t;
		if(params.size()==1)
			this.variable_is_set = Arrays.asList(false);
		else
			this.variable_is_set = Arrays.asList(false, false);
		this.is_return_set=false;
	}
	
	public Signature(String name, List<String> params, List<String> param_names, String return_t, Type t, List<Boolean> isSet, Boolean returnSet) {
		this.function_name = name;
		this.mtype = t;
		this.variable_types = params;
		this.variable_names= param_names;
		this.return_type = return_t;
		this.variable_is_set = isSet;
		this.is_return_set=returnSet;
	}
	

}
