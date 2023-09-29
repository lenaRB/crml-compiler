package crml.translator;

import java.util.HashMap;
import java.util.List;
import java.util.Vector;

import grammar.crmlParser.Category_pairContext;

public class CategoryMapping {
	
	HashMap<String, List<Category>> categoryMap;
	
	public void addAssociation(String name, String category_name, List<List<String>> operator_mapping) {
	
		List<Category> cs = categoryMap.get(name); // check if already present
		
		//Category nc = new Category(category_name, operator_mapping);
	
		if (cs == null) {
			cs = new Vector<Category>();
		} else {
			
		}
			
		categoryMap.put(name, cs);
	}

    public void add_mapping(String text, List<Category_pairContext> category_pair) {
    }

    public void add_association(String text, String text2, String text3) {
    }


}
