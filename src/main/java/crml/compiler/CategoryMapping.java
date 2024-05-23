package crml.compiler;

import java.util.HashMap;
import java.util.List;
import java.util.Vector;

import grammar.crmlParser.Category_pairContext;

public class CategoryMapping {
	
	HashMap<String, HashMap <String, String>> categoryMap;
	
	public void addCategory(String name, HashMap <String, String> operator_mapping) {
		
		//FIXME - check for name conflicts
		categoryMap.put(name, operator_mapping);
	}

    public HashMap <String, String> getCategory(String name){
		return categoryMap.get(name);
	}


}
