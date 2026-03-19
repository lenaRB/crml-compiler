package crml.compiler;

import java.util.ArrayList;
import java.util.List;

public class Value {
	public Value(List<Value> contents, String type) {
		this.contents_set=contents;
		this.type=type;
		this.isSet = false;
		this.setPath=null;
	}

	public Value(String contents, String type) {
		this.contents=contents;
		this.type=type;
		this.isSet = false;
		this.setPath=null;
	}
	
	public Value(List<Value> contents, String type, Boolean isSet, List<String> setPath) {
		this.contents_set=contents;
		this.type=type;
		this.isSet=isSet;
		this.setPath=setPath;
	}

	public Value(String contents, String type, Boolean isSet, List<String> setPath) {
		this.contents=contents;
		this.type=type;
		this.isSet=isSet;
		this.setPath=setPath;
	}
	
	public Value(List<Value> contents, String type,  Boolean isSet) {
		this.contents_set=contents;
		this.type=type;
		this.isSet = isSet;
		this.setPath=new ArrayList<String>();
	}

	public Value(String contents, String type,  Boolean isSet) {
		this.contents=contents;
		this.type=type;
		this.isSet = isSet;
		this.setPath=new ArrayList<String>();
	}

	public String toModelica(){
		if(!isSet | contents_set == null) return contents;

		String ret = "{";
		String separator = "";
		for(Value v : contents_set){
			ret += separator + v.toModelica();
			separator = ", ";
		}
		ret +="}";

		return ret;
	}

	public List<Value> getSetValue(){
		return contents_set;
	}

	public String getValue(){
		return contents;
	}
	
	private String contents; // single value
	private List<Value> contents_set; // parsed contents for a set
	String type; // computed type
	Boolean isSet;
	List<String> setPath;

}
