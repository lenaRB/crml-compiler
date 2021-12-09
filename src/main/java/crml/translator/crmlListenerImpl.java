package crml.translator;

import java.util.HashMap;

import grammar.crmlBaseListener;
import grammar.crmlParser;



public class crmlListenerImpl extends crmlBaseListener {

	StringBuffer buffer;

	//type mapping
		HashMap<String, String> types_mapping;

	public crmlListenerImpl () {
		buffer = new StringBuffer();

		types_mapping = new HashMap<String, String>();
		types_mapping.put("Boolean", "CRMLBool");
	}

	@Override public void enterDefinition(crmlParser.DefinitionContext ctx) {
		buffer.append("model " + ctx.id(0).getText() + " \n");
	}

	@Override public void exitDefinition(crmlParser.DefinitionContext ctx) {
		buffer.append("end " + ctx.id(1).getText()+ ";\n");
	}

	@Override public void enterElement_def(crmlParser.Element_defContext ctx) {
		String var_t, mapped_t;

	/*	if (!ctx.type().getText().isEmpty()) {

			var_t = ctx.type().getText();
			if(types_mapping.containsKey(var_t))
				mapped_t= types_mapping.get(var_t);
			else
				mapped_t=var_t;
			buffer.append(mapped_t + " ");
			buffer.append(ctx.id(0).getText());

			if(!ctx.exp().isEmpty())
				buffer.append(" = ");
		}	*/
	}

	@Override public void exitElement_def(crmlParser.Element_defContext ctx){
		buffer.append(";\n");
	}

	@Override public void enterExp(crmlParser.ExpContext ctx) {

	}

	@Override public void enterBoolean_value(crmlParser.Boolean_valueContext ctx) {
		String bool_val, translated_val;

		bool_val = ctx.getText();

		switch(bool_val) {
		  case "true":
			 translated_val = "CRMLBool.TRUE";
		    break;
		  case "false":
			  translated_val = "CRMLBool.FALSE";
		    break;
		  case "undecided":
			  translated_val = "CRMLBool.UNDECIDED";
		    break;
		  case "undefined":
			  translated_val = "CRMLBool.UNDEFINED";
		    break;
		  default:
			  translated_val = "error";
		}
		buffer.append(translated_val);
	}

	@Override public void enterBinary_op(crmlParser.Binary_opContext ctx) {
		String op, translated_op;

		ctx.getText();
	}

}
