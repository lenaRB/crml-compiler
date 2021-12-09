package crml.translator;

public class Value {
	public Value(String contents, String type) {
		this.contents=contents;
		this.type=type;
	}
	String contents; // parsed contents
	String type; // computed type
}
