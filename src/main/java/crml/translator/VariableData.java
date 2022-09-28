package crml.translator;

import java.util.HashMap;

import org.antlr.v4.runtime.misc.ParseCancellationException;

public class VariableData {
	
	class VariableType{
	String type;
	Boolean isSet;
	
	public VariableType(String type, Boolean isSet) {
		this.type=type;
		this.isSet=isSet;
		}
	}
	
	
	//types of variables for operator typing
			
	private HashMap<String, VariableType> variable_types;
	
	private HashMap<String, VariableType> local_variable_types;
			
	private HashMap<String, HashMap<String, VariableType> > class_variable_types;
			
	//private HashMap<String, String> class_elements;
	
	public  VariableData() {
		variable_types = new HashMap<String, VariableType>();		
		local_variable_types = new HashMap<String, VariableType>();		
		class_variable_types = new HashMap<String, HashMap<String, VariableType>>();
	}
	
	
	public void putVariable(String name, String type, Boolean isSet, String prefix) {
		if(prefix.isEmpty())
			variable_types.put(name, new VariableType(type, isSet));
		else {
			
			if (class_variable_types.containsKey(prefix))
				class_variable_types.get(prefix).put(name, new VariableType(type, isSet));
			else {
				HashMap<String, VariableType> new_class_table= new HashMap<String, VariableData.VariableType> ();
				new_class_table.put(name, new VariableType(type, isSet));
				class_variable_types.put(prefix, new_class_table);
			}
			
		}
	}
	
	public void putlocalVariable(String name, String type, Boolean isSet) {
		local_variable_types.put(name, new VariableType(type, isSet));	
	}
	
	public void cleanLocalVariables() {
		local_variable_types = new HashMap<String, VariableType>();
	}
	
	public String getVariableType(String name) {
		
		if(!name.contains(".") && local_variable_types.containsKey(name)) {
			return local_variable_types.get(name).type;
		} else if(!name.contains(".") && variable_types.containsKey(name)) {
			return variable_types.get(name).type;
		} else if (name.contains(".")) {
			
			String [] path = name.split("\\.");
			
			if (path.length >2) // TODO fix for nested classes
				throw new ParseCancellationException("does not support nested classes : " + name + '\n');
			
			
			VariableType classType = local_variable_types.get(path[0]);
			if (classType == null) // try global vars
				classType = variable_types.get(path[0]);
			if (classType == null)
				throw new ParseCancellationException("unable to find parent class : " + path[0] + '\n');
			
				
			VariableType v_data= class_variable_types.get(classType.type).get(path[1]);
			
			if (v_data == null)
				throw new ParseCancellationException("unable to find type of variable : " + name + '\n');
			
			return v_data.type;
		}
			
		
		throw new ParseCancellationException("unable to get variable type : " + name + '\n');
	}
	
	public Boolean isSetVariable(String name) {
		
		if(name.contains(".")==false && local_variable_types.containsKey(name)) {
			return local_variable_types.get(name).isSet;
		} else if(name.contains(".")==false && variable_types.containsKey(name)) {
			return variable_types.get(name).isSet;
		}
		
		
		throw new ParseCancellationException("unable to get variable type : " + name + '\n');
	}
			
			
}
