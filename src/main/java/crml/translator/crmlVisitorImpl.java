package crml.translator;

import java.util.HashMap;
import java.util.List;

import org.antlr.v4.runtime.misc.ParseCancellationException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import grammar.crmlBaseVisitor;

import grammar.crmlParser;
import grammar.crmlParser.CategoryContext;
import grammar.crmlParser.Class_defContext;
import grammar.crmlParser.Class_var_defContext;
import grammar.crmlParser.Clock_constructorContext;
import grammar.crmlParser.Component_referenceContext;
import grammar.crmlParser.DefinitionContext;
import grammar.crmlParser.Element_defContext;
import grammar.crmlParser.ExpContext;
import grammar.crmlParser.IdContext;
import grammar.crmlParser.If_expContext;
import grammar.crmlParser.Uninstantiated_defContext;
import grammar.crmlParser.User_keywordContext;


public class crmlVisitorImpl extends crmlBaseVisitor<Value> {

		private Integer counter;

		//type mapping from CRML built-in to Modelica
		private HashMap<String, String> types_mapping;

		//operator mapping CRML built-in to Modelica
	    private HashMap<String, List<Signature>> operators_map;	    

	    private VariableData variableTable;

		private HashMap<String, Signature> user_operators;

		private StringBuffer localFunctionCalls;

		private static final Logger logger = LogManager.getLogger();
		
		crmlParser parser;
		
		private String prefix= ""; //to keep track of variable prefix

		public crmlVisitorImpl (crmlParser parser) {
			
			this.parser = parser;

			types_mapping = new HashMap<String, String>();

			// table for mapping CRML built in types to Modelica types
			types_mapping.put("Boolean", 	 "CRML.ETL.Types.Boolean4");
			types_mapping.put("Period", 	 "CRML.Period");
			types_mapping.put("Event", 	 	 "CRML.Event");
			types_mapping.put("Requirement", "CRML.ETL.Types.Boolean4");
			types_mapping.put("Clock", 		 "CRML.CRMLClock");
			types_mapping.put("Real", 		 "Real");
			types_mapping.put("Integer", 	 "Integer");
			types_mapping.put("String", 	 "String");
			types_mapping.put("Set", 	 	 "CRML.CRMLSet");

			operators_map = OperatorMapping.get_operator_map();

			localFunctionCalls = new StringBuffer();

			user_operators = new HashMap<String, Signature>();

			counter = 0; //used to create unique names for automatically generated blocks

			variableTable = new VariableData();
		}

		@Override public Value visitDefinition(DefinitionContext ctx) {
			StringBuffer buffer = new StringBuffer();

				//TODO support for library and package
				if (!ctx.definition_type().getText().equals("model"))
					throw new ParseCancellationException("library and package not implemented yet");
				
				buffer.append("model " + ctx.id().getText() + " \n");

				List<Element_defContext> cL = ctx.element_def();

				for (Element_defContext e : cL)
					buffer.append(visit(e).contents);

				buffer.append(localFunctionCalls);

				buffer.append("end " + ctx.id().getText()+ ";\n");

				return new Value (buffer.toString(), "Program");
			}

		@Override public Value visitElement_def(crmlParser.Element_defContext ctx)  
			{

			// the element is a definition
			if(ctx.var_def() != null)
				return visit(ctx.var_def());

			// the element is a template
			if (ctx.template() != null)
				return visit (ctx.template());

			// the element is an operator
			if (ctx.operator() != null)
				return visit(ctx.operator());
			
			// the element is a class definition
			if(ctx.class_def() != null)
				return visit(ctx.class_def());
			
			// the element is a category
			if(ctx.category() != null)
				return visit(ctx.category());
			
			// the element is a parameter or an external variable
			if(ctx.uninstantiated_def()!= null)
				return visit (ctx.uninstantiated_def());
			
			// TODO sets, comments, type

			throw new ParseCancellationException("Unable to translate in element_def : "+ ctx.getText()+ '\n');
		}
		
		@Override public Value visitUninstantiated_def(Uninstantiated_defContext ctx) {
			
			String var_type="", var_modelica_type="";
			String var_name;
			StringBuffer var_names = new StringBuffer();
			String var_prefix;
			
			if(ctx.static_qualifier().getText().contentEquals("parameter"))
				var_prefix = "parameter ";
			else
				var_prefix = "external ";
			
			if (ctx.type() != null)
				// convert the type if it is a built in
				if(ctx.type().builtin_type()!=null) {
					var_type = ctx.type().builtin_type().getText();
					var_modelica_type = types_mapping.get(var_type);
				}
					
				else {
					var_type = ctx.type().id().getText();
					var_modelica_type = var_type;
				}
			
			// TODO translate structure types
			else if(ctx.structure_type()!=null)
				throw new ParseCancellationException("need to implement structure type translation : "+ ctx.getText()+ '\n');
					
			
			int i = 0;
			for (IdContext e:ctx.id()) {
				var_name = e.getText();
				var_names.append(var_name);
				
				//TODO fix set support
				variableTable.putVariable(var_name, var_type, false, prefix);
				
				i++;
				if (i< ctx.id().size())
					var_names.append(" ,");
			}
			
			return new Value(var_prefix + var_modelica_type + " " + var_names + ";\n", var_type);
			
		}	
		
		 
		
		@Override public Value visitCategory(CategoryContext ctx) {
			return new Value("", "Category");
			
		}		
		
		@Override public Value visitClass_def(Class_defContext ctx) {
			StringBuffer buffer = new StringBuffer();
			Value val;
			
			String prefixTemp = prefix;
			
			if(prefix!="")
				prefix+=".";
			
			prefix += ctx.id(0).getText();
			
			buffer.append("model "+ ctx.id(0).getText());
			// parse class variables
			if (ctx.class_var_def()!= null)
				buffer.append("\n");
				for (Class_var_defContext e : ctx.class_var_def()) {
					val = visitClass_var_def(e);
					
					buffer.append(val.contents);
				}
			
			
			if (ctx.type()!=null) {
				buffer.append(" extends " + ctx.type().getText());
				
				// TODO translate class parameters
				if(ctx.class_params()!= null)
					throw new ParseCancellationException("class parameters not implemented yet");
				
				buffer.append(";\n");
			}
			buffer.append("end "+ ctx.id(0).getText() + "; \n");
			
			prefix= prefixTemp;
			
			return new Value (buffer.toString(), "Class_Definition");
		}

		@Override public Value visitClass_var_def(Class_var_defContext ctx) {
			
			Value value=null;
			
			if (ctx.var_def()!=null)
				value = visit(ctx.var_def());
			else if (ctx.uninstantiated_def()!=null)
				value = visit(ctx.uninstantiated_def());
			
			else 
			//TODO translate class qualifier
			//TODO translate alias, comment, forbid
				throw new ParseCancellationException("unable to translate class: " + ctx.var_def().getText() + '\n');
	
			 return value;
		}
		
		@Override public Value visitOperator(crmlParser.OperatorContext ctx) {
			StringBuffer definition = new StringBuffer("model ");
			StringBuffer modelName = new StringBuffer("'");

			StringBuffer store_localFunctionCalls = new StringBuffer(localFunctionCalls);

			localFunctionCalls = new StringBuffer();

			// generate function name
			for (User_keywordContext k : ctx.operator_def().user_keyword()) {
			
			String s = k.getText().replace("'", "");
			modelName.append(s); 
			} 
			modelName.append("'");
			definition.append(modelName);
			definition.append("\n");

			String bType ;//= types_mapping.get(ctx.type().getText());
			//if (bType == null)
				bType=ctx.type().getText();
			
			// keep a list of operator signatures for typing calls
			Signature sig = new Signature();
			sig.return_type = bType;
			sig.return_name = "out";
			sig.function_name = modelName.toString();

			// generate variables
				int i=0;
				for (IdContext v : ctx.operator_def().id()) {
				String type = ctx.operator_def().type().get(i).getText();
				String mtype = types_mapping.get(type);
				if(mtype == null) mtype = type;
				definition.append("input " + mtype + " " + v.getText() + ";\n");	
				
				// TODO fix set support
				variableTable.putlocalVariable(v.getText(), type, false);
				
				sig.variable_names.add(v.getText());
				sig.variable_types.add(bType);
			    i++;
			}
	
			user_operators.put(modelName.toString(), sig);

			definition.append("output " + bType + " out; \n");

			// append body
			Value exp = visit(ctx.operator_def().exp());
			definition.append(localFunctionCalls + "\n");
			definition.append("equation \n out =" + exp.contents + ";\n");
			definition.append("end ");
			definition.append(modelName);
			definition.append(";\n");

			// get rid of all local variables
			variableTable.cleanLocalVariables();

			//restore local function calls
			localFunctionCalls = store_localFunctionCalls;

			return new Value (definition.toString(), "Operator");
		}

		@Override public Value visitTemplate(crmlParser.TemplateContext ctx) {

			StringBuffer definition = new StringBuffer("model ");
			StringBuffer modelName = new StringBuffer("'");

			StringBuffer store_localFunctionCalls = new StringBuffer(localFunctionCalls);

			localFunctionCalls = new StringBuffer();

			// generate function name
			for (User_keywordContext k : ctx.user_keyword()) {
				String s = k.getText().replace("'", "");
				modelName.append(s);
				
			}
			modelName.append("'");
			definition.append(modelName);
			definition.append("\n");

			String bType = types_mapping.get("Boolean");

			// keep a list of operator signatures for typing calls
			Signature sig = new Signature();
			sig.return_type = "Boolean";
			sig.return_name = "out";
			sig.function_name = modelName.toString();

			// generate variables
			for (IdContext v : ctx.id()) {
				definition.append("input " + bType + " " + v.getText() + ";\n");
				
				// TODO fix sets
				variableTable.putlocalVariable(v.getText(), "Boolean", null);
			
				sig.variable_names.add(v.getText());
				sig.variable_types.add(bType);
			}

			user_operators.put(modelName.toString(), sig);

			definition.append("output " + bType + " out; \n");

			// append body
			Value exp = visit(ctx.exp());
			definition.append(localFunctionCalls + "\n");
			definition.append("equation \n out =" + exp.contents + ";\n");
			definition.append("end ");
			definition.append(modelName);
			definition.append(";\n");

			// get rid of all local variables
			variableTable.cleanLocalVariables();

			//restore local function calls
			localFunctionCalls = store_localFunctionCalls;

			return new Value (definition.toString(), "Template");
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
				

				//TODO fix set variables
				
				variableTable.putVariable(ctx.id().getText(), var_t, null, prefix);
			
				System.out.println("variable table updated with : "+ prefix+ctx.id().getText());


				if(ctx.exp()!=null) {
					buffer.append(" = " + visit(ctx.exp()).contents);
				}
				buffer.append(";\n");

			return new Value(buffer.toString(), "Definition");
		}

		@Override public Value visitExp(crmlParser.ExpContext ctx) {
			Value right, left;

			// if the expression is a constant
			if(ctx.constant()!=null)
				return visit(ctx.constant());

			// if the expression is a variable
			if(ctx.id()!=null) {
				if (variableTable.getVariableType(ctx.id().getText())!=null)
					 return new Value (ctx.getText(), variableTable.getVariableType(ctx.id().getText()));

				else throw new ParseCancellationException("unable to get variable type : " + ctx.id().getText() + '\n');
			}
			 
			//if the expression is a componenent reference
			if(ctx.crml_component_reference()!=null) {
				return new Value (ctx.getText(), variableTable.getVariableType(ctx.getText()));
			}
				 

				//else throw new ParseCancellationException("unable to get variable type : " + ctx.id().getText() + '\n');
			
			// if the expression is a user defined call
			if(ctx.user_operator_call() != null) {
				return visit(ctx.user_operator_call());
			}
			
			// if expression is an if-then-else
			if(ctx.if_exp() != null) {
				return visit(ctx.if_exp());
			}
			
			if(ctx.op()!= null)
				if(ctx.op().user_keyword()!=null) { // if the expression is a user defined operator
					Value result = apply_user_operator(ctx.op().user_keyword().getText(), ctx.exp());
					return result;
				} else if (ctx.binary!=null){
				left = visit(ctx.left);
				right = visit(ctx.right);
				Value result = apply_binary_op(ctx.op().getText(), left, right);
				return result;
				} else if(ctx.lunary!= null) {
					left = visit(ctx.left);					
					Value result = apply_lunary_op(ctx.op().getText(), left);
					return result;
				}  else if(ctx.runary!= null) {
					right = visit(ctx.right);					
					Value result = apply_runary_op(ctx.op().getText(), right);
					return result;
				}

			// if the expression is in parenthesis
			if(ctx.sub_exp()!=null)
				return visit(ctx.sub_exp().exp());

			// expression is a constructor
			if(ctx.clock_constructor()!= null)
				return visit(ctx.clock_constructor());
			
			// expression is a constructor
			if(ctx.constructor!= null) {
				Value exp_val = visit(ctx.exp(0));
				Value result = apply_lunary_op(ctx.constructor.getText(), exp_val);
				return result;
			}
			
			// expression is a tick
			if(ctx.tick() != null) {
				return new Value ("time", "Real");
			}						

			throw new ParseCancellationException("unable to parse expression : " + ctx.getParent().getText() + '\n');
		}
		
		@Override 
		public Value visitComponent_reference(Component_referenceContext ctx) {
		// TODO fix component references
			throw new ParseCancellationException("component references not implemented yet : " + ctx.toStringTree() + '\n');
		}
		
		@Override
		public Value visitIf_exp(If_expContext ctx) {
			
			Value value_if, value_then, value_else;
			
			value_if = visit(ctx.if_e);
			
			value_then = visit (ctx.then_e);
			
			if (ctx.else_e != null) {
				value_else = visit(ctx.else_e);
				
				return new Value (" if (" + value_if.contents + "== CRML.ETL.Types.Boolean4.true4) then " 
						+  value_then.contents + " else " +  value_else.contents, 
						value_then.type);
			
			}
			return new Value (" if " + value_if.contents + " then " 
					+  value_then.contents, 
					value_then.type);			
			}
		
		@Override
		public Value visitClock_constructor(Clock_constructorContext ctx) {
			String varName = "c"+ counter++;
			String clockType = types_mapping.get("Clock");
			localFunctionCalls.append(clockType + " " + varName + "(b=" + ctx.id().getText() + ");\n");
			localFunctionCalls.append("CRML.CRMLClock_build " + varName+"_init(clock =" + varName + ");\n");
			return new Value (varName+".out", "Clock");
			
			}
		
		private Value apply_user_operator(String op, List<ExpContext> exp) {
			
			// check if the operator is defined
			Signature sign = user_operators.get(op);
			if (sign== null)
				throw new ParseCancellationException("User operator undefined : " + op + '\n');
			
			String name=op.substring(0, op.length()-1)+counter+'\'';
			
			String res;
			if (exp.size()==2) {
				Value left = visit(exp.get(0));
				Value right = visit(exp.get(1));
				
				res = sign.function_name + " " + name+ "(" + sign.variable_names.get(0) + "="+left.contents+"," +
						sign.variable_names.get(1)+ "="+right.contents+");\n";
			} else {
				Value operand = visit(exp.get(0));
				
				res = sign.function_name + " " + name+ "(" + sign.variable_names.get(0) + "="+operand.contents+");\n";
			}
				
			localFunctionCalls.append(res);
			counter++;
			return new Value ("name.out", sign.return_type);
		
		}
		
		private Value apply_runary_op(String op, Value right) {
			
			
			Signature op_t = OperatorMapping.is_defined(operators_map, op, right.type);
			
			if (op_t== null) 
				throw new ParseCancellationException("Built in operator undefined : " + op + " on " + right.type +'\n');
			
			if (op_t.mtype == Signature.Type.OPERATOR) { // check if predefined operator maps to Modelica operator
							
				// special case if the return is boolean and needs to be wrapped in a CRML boolean
				if (op_t.return_type.equals("Boolean"))
					return new Value ("CRML.ETL.Types.cvBooleanToBoolean4(" + op_t.function_name + " " + right.contents + ")", "Boolean");
				
				return new Value (op_t.function_name + " " + right.contents, op_t.return_type);
			} else if (op_t.mtype == Signature.Type.FUNCTION) {
				return new Value (op_t.function_name +"(" + right.contents + ")", op_t.return_type);
				
			}
			
			// operator translates to block instantiation
				String name=op+counter;
						
						
				String res = op_t.function_name + " " + name+ "(" + op_t.variable_names.get(0) + " = "+right.contents+");\n";
				localFunctionCalls.append(res);
				counter++;
						
				return new Value (name + ".out", op_t.return_type);
			
		}

		private Value apply_lunary_op(String op, Value left) {
			Signature op_t = OperatorMapping.is_defined(operators_map, op, left.type);
			
			if (op_t== null) 
				throw new ParseCancellationException("Built in operator undefined : " + op + " on " + left.type  +'\n');
			
			if (op_t.mtype == Signature.Type.OPERATOR) { // check if predefined operator maps to Modelica operator
							
				// special case if the return is boolean and needs to be wrapped in a CRML boolean
				if (op_t.return_type.equals("Boolean"))
					return new Value ("CRML.ETL.Types.cvBooleanToBoolean4(" + op_t.function_name + " " + left.contents + ")", "Boolean");
				
				return new Value (op_t.function_name + " " + left.contents, op_t.return_type);
			} else if (op_t.mtype == Signature.Type.FUNCTION) {
				return new Value (op_t.function_name +"(" + " " + left.contents + ")", op_t.return_type);
				
			}
			
			// operator translates to block instantiation
			String name=op+counter;
			
			String res = op_t.function_name+ " " + name+ "(" + op_t.variable_names.get(0) + " = "+left.contents+");\n";
			localFunctionCalls.append(res);
			counter++;
					
			return new Value (name + ".out", op_t.return_type);
		}
		
		private Value apply_binary_op(String op, Value left, Value right) {
			// check if predefined operator maps to Modelica operator
			
			Signature op_t = OperatorMapping.is_defined(operators_map, op, left.type, right.type);
			
			if (op_t== null) 
				throw new ParseCancellationException("Built in operator undefined : " + op + " on " + left.type + " and " + right.type +'\n');
			
			if (op_t.mtype == Signature.Type.OPERATOR) { // check if predefined operator maps to Modelica operator
				
				// special case if the return is boolean and needs to be wrapped in a CRML boolean
				if (op_t.return_type.equals("Boolean"))
					return new Value ("CRML.ETL.Types.cvBooleanToBoolean4(" + left.contents + " " + op + " " + right.contents + ")", "Boolean");
				
				return new Value (left.contents + " " + op_t.function_name + " " + right.contents, op_t.return_type);
			} else if (op_t.mtype == Signature.Type.FUNCTION) {
				return new Value (op_t.function_name +"(" + right.contents + ", " + left.contents + ")", op_t.return_type);
				
			}
			
			// operator translates to block instantiation
			String name=op+counter;
			
			
			String res = op_t.function_name+ " " + name+ "("+ op_t.variable_names.get(0) + " = "+left.contents+","
					+ op_t.variable_names.get(1) + " = "+right.contents+");\n";
			localFunctionCalls.append(res);
			counter++;
			
			return new Value (name + ".out", op_t.return_type);
				
		}


		@Override public Value visitConstant(crmlParser.ConstantContext ctx) {
			
			// TODO fix proper type conversion
			
			if(ctx.boolean_value()!=null)
				return visit(ctx.boolean_value());

			if(ctx.string()!=null)
				return new Value(ctx.string().getText(), "String");

			if(ctx.number()!=null)
				if(ctx.number().getText().contains("."))
					return new Value(ctx.number().getText(), "Real");
				else return new Value(ctx.number().getText(), "Integer");

			String val = ctx.getText();

			throw new ParseCancellationException("Unable to evaluate constant " + val + '\n');
		}

		@Override public Value visitBoolean_value(crmlParser.Boolean_valueContext ctx) {
			String bool_val;

			bool_val = ctx.getText();

			switch(bool_val) {
			  case "true":			return new Value ("CRML.ETL.Types.Boolean4.true4", "Boolean");
			  case "false":			return new Value ("CRML.ETL.Types.Boolean4.false4", "Boolean");
			  case "undecided": 	return new Value ("CRML.ETL.Types.Boolean4.undecided", "Boolean");
			  case "undefined":		return new Value ("CRML.ETL.Types.Boolean4.undefined", "Boolean");
			  default:
				  logger.error("Not a valid value for a boolean");
			throw new ParseCancellationException("Not a valid value for a boolean " + ctx.getText() + '\n');
					
			}

		}
				
}
