package crml.compiler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.antlr.v4.runtime.misc.ParseCancellationException;

public class VariableData {
	
	class VariableType{
	String type;
	Boolean isSet;
	List<String> setPath;
	
	public VariableType(String type, Boolean isSet) {
		this.type=type;
		this.isSet=isSet;
		this.setPath = null;
		}
	
	
	public VariableType(String type, Boolean isSet, List<String> setPath) {
		this.type=type;
		this.isSet=isSet;
		this.setPath = setPath;
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
	
	public VariableType getVariableInfo(String name) {
		
		if(!name.contains(".") && local_variable_types.containsKey(name)) {
			return local_variable_types.get(name);
		} else if(!name.contains(".") && variable_types.containsKey(name)) {
			return variable_types.get(name);
		} else if (name.contains(".")) {
			
			String [] path = name.split("\\.");
			
			
			VariableType classType, v_data;
			List<String> setPath = new ArrayList<String>();
			
			
			
			classType = local_variable_types.get(path[0]);
			if (classType == null) // try global vars
				classType = variable_types.get(path[0]);
			if (classType == null)
				throw new ParseCancellationException("unable to find parent class : " + path[0] + '\n');
			
			StringBuffer setPath_e = new StringBuffer(classType.type);
			Boolean isSet = false;
			
			for(int i=1; i<path.length; i++) {
	
				if(classType.isSet) {
					setPath.add(setPath_e.toString());
					setPath_e = new StringBuffer();
					isSet = true;
				}
				
				v_data= class_variable_types.get(classType.type).get(path[i]);
				

				if (v_data == null)
					throw new ParseCancellationException("unable to find type of variable : " + name + '\n');
				
				classType = v_data;
				if(!setPath_e.toString().isEmpty())
					setPath_e.append(".");
				
				setPath_e.append(classType.type);
			}
			
			
			return new VariableType(classType.type, isSet, setPath);
		}
			
		
		throw new ParseCancellationException("unable to get variable type : " + name + '\n');
	}
			
}
