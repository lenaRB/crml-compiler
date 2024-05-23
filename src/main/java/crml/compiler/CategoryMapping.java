package crml.compiler;

import java.util.HashMap;

public class CategoryMapping {
	
	HashMap<String, HashMap <String, String>> categoryMap;

	public CategoryMapping(){
		categoryMap = new HashMap<>();
	}
	
	public void addCategory(String name, HashMap <String, String> operator_mapping) {
		
		//FIXME - check for name conflicts
		categoryMap.put(name, operator_mapping);
	}

    public HashMap <String, String> getCategory(String name){
		return categoryMap.get(name);
	}


}
