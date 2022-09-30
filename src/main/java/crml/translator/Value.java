package crml.translator;

public class Value {
	public Value(String contents, String type) {
		this.contents=contents;
		this.type=type;
		this.isSet = false;
	}
	
	public Value(String contents, String type, Boolean isSet) {
		this.contents=contents;
		this.type=type;
		this.isSet=isSet;
	}
	String contents; // parsed contents
	String type; // computed type
	Boolean isSet;
}
