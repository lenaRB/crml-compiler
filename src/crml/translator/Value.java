package crml.translator;

import java.util.ArrayList;
import java.util.List;

public class Value {
	public Value(String contents, String type) {
		this.contents=contents;
		this.type=type;
		this.isSet = false;
		this.setPath=null;
	}
	
	public Value(String contents, String type, Boolean isSet, List<String> setPath) {
		this.contents=contents;
		this.type=type;
		this.isSet=isSet;
		this.setPath=setPath;
	}
	
	public Value(String contents, String type,  Boolean isSet) {
		this.contents=contents;
		this.type=type;
		this.isSet = isSet;
		this.setPath=new ArrayList<String>();
	}
	
	String contents; // parsed contents
	String type; // computed type
	Boolean isSet;
	List<String> setPath;
}
