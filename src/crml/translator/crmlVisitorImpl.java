package crml.translator;

import java.util.HashMap;
import java.util.List;

import crml.crmlBaseVisitor;
import crml.crmlParser;
import crml.crmlParser.DefinitionContext;
import crml.crmlParser.Element_defContext;

public class crmlVisitorImpl extends crmlBaseVisitor<Value> {
		
		private Integer counter;

		//type mapping
		HashMap<String, String> types_mapping;
		
		
		//types of variables for operator typing
		HashMap<String, String> variable_types;
		
		
		public crmlVisitorImpl () {		
			
			types_mapping = new HashMap<String, String>();
			types_mapping.put("Boolean", "CRMLBool");
			types_mapping.put("Period",  "CRMLPeriod");
			
			variable_types = new HashMap<String, String>();	
			
			counter = 0; //used to create unique names for automatically generated blocks
		}		
		
		@Override public Value visitDefinition(DefinitionContext ctx) {
			StringBuffer buffer = new StringBuffer();
			
				buffer.append("model " + ctx.id(0).getText() + " \n");
				
				List<Element_defContext> cL = ctx.element_def();
				
				for (Element_defContext e : cL)
					buffer.append(visit(e).contents);
					
				buffer.append("end " + ctx.id(1).getText()+ ";\n"); 
				
				return new Value (buffer.toString(), "Program");
			}
		
		@Override public Value visitElement_def(crmlParser.Element_defContext ctx) {
			
			if(!ctx.var_def().isEmpty())
				return visit(ctx.var_def());
			
			return new Value ("Unknown "+ctx.getText()+ '\n', "Program");
		}
		
		@Override public Value visitVar_def(crmlParser.Var_defContext ctx) {
			String var_t, mapped_t;
			StringBuffer buffer = new StringBuffer();
				
				var_t = ctx.type().getText();
				if(types_mapping.containsKey(var_t))
					mapped_t= types_mapping.get(var_t);
				else
					mapped_t=var_t;
				
				buffer.append(mapped_t + " ");		
				buffer.append(ctx.id().getText());	
				
				variable_types.put(ctx.id().getText(), var_t);
				
				if(ctx.exp()!=null) {
					buffer.append(" = " + visit(ctx.exp()).contents);	
					
				}
				buffer.append(";\n");	
			
			return new Value(buffer.toString(), "Definition");
		}
		
		@Override public Value visitExp(crmlParser.ExpContext ctx) {
			Value right, left, exp;
			
			// if it the expression is a constant			
			if(ctx.constant()!=null)
				return this.visit(ctx.constant());
			
			// if the expression is a variable
			if(ctx.id()!=null) {
				if (variable_types.containsKey(ctx.getText()))
					 return new Value (ctx.getText(), variable_types.get(ctx.getText()));	
				
				else return new Value ("not found", "oops");
			} 
							
			// if the expression is a binary operator
			if(ctx.binary_op()!=null) {
				left = visit(ctx.exp(0));
				right = visit(ctx.exp(1));
				
				Value result = apply_binary_op(left, right, ctx.binary_op().getText());
				return result;				
			}
			
			// if the expression is in paranthesis
			if(ctx.sub_exp()!=null)
				return visit(ctx.sub_exp().exp());
				
				
			// if the expression is a right unary operator
			
			// if the expression is a right unary operator
			
			
			
			return null;
		}

		private Value apply_binary_op(Value left, Value right, String op) {
			switch (left.type) {
			case "Boolean":
				return new Value (applyBooleanOp(left, right, op), "Boolean");
			case "Number":
				return new Value (left.contents + " " + op + " " + right.contents, "Number");
			default:
				break;
			}
			return new Value (op + " notParsed", "unknown");
		}

		private String applyBooleanOp(Value left, Value right, String op) {
			switch (op) {
			case "+":
				return ("CRMLBool.add("+ left.contents + "," + right.contents + ")");
			case "-":
				return ("CRMLBool.minus("+ left.contents + "," + right.contents + ")");
			case "*":
				return ("CRMLBool.mult("+ left.contents + "," + right.contents + ")");
			case "and":
				return ("CRMLBool.and("+ left.contents + "," + right.contents + ")");
			default:
				break;
			}
			
			return "unapplicable operator";
		}
		

		@Override public Value visitConstant(crmlParser.ConstantContext ctx) {
			
			if(ctx.boolean_value()!=null)
				return visit(ctx.boolean_value());
			
			if(ctx.string()!=null)
				return new Value(ctx.string().getText(), "String");
			
			if(ctx.number()!=null)
				return new Value(ctx.number().getText(), "Number");
			
			String val = ctx.getText();		
			
			return new Value("Unknown Type " + val, "Unknown");
		}
		
		@Override public Value visitBoolean_value(crmlParser.Boolean_valueContext ctx) {
			String bool_val, translated_val;
			
			bool_val = ctx.getText();	
			
			switch(bool_val) {
			  case "true":			return new Value ("CRMLBool.TRUE", "Boolean");
			  case "false":			return new Value ("CRMLBool.FALSE", "Boolean");
			  case "undecided": 	return new Value ("CRMLBool.UNDECIDED", "Boolean");
			  case "undefined":		return new Value ("CRMLBool.UNDEFINED", "Boolean");
			  default:				return new Value ("error", "Error");
			}
			
		}

}
