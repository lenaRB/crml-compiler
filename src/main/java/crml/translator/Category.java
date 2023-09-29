package crml.translator;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class Category {

	String name;
	HashMap<String,String> operator_set;
	
	
	public Category(String category_name, List<List<String>> operator_mapping) {
		name = category_name;
		Iterator<List<String>> it = operator_mapping.iterator();
		while (it.hasNext())
			operator_set.put(it.next().get(0), it.next().get(1));
	}

	public String getMappedOperaotr(String original_op){
		return operator_set.get(original_op);
	}

	
	
}
