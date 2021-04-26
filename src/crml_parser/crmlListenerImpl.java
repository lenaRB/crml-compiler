package crml_parser;

import crml.crmlBaseListener;
import crml.crmlParser;



public class crmlListenerImpl extends crmlBaseListener {
	
	StringBuffer buffer;
	
	public crmlListenerImpl () {
		buffer = new StringBuffer();
	}
	
	@Override public void enterDefinition(crmlParser.DefinitionContext ctx) { 
		buffer.append("model " + ctx.id(0).getText());
	}
	
	@Override public void exitDefinition(crmlParser.DefinitionContext ctx) {
		buffer.append(" end " + ctx.id(1).getText()+ ";");
	}

}
