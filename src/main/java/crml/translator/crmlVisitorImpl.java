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
import grammar.crmlParser.External_defContext;
import grammar.crmlParser.IdContext;
import grammar.crmlParser.User_keywordContext;

public class crmlVisitorImpl extends crmlBaseVisitor<Value> {

		private Integer counter;

		//type mapping
		private HashMap<String, String> types_mapping;

		//operator mapping
	    private HashMap<String, List<Signature>> operators_map;
	    

		//types of variables for operator typing
		private HashMap<String, String> variable_types;

		private HashMap<String, Signature> user_operators;

		private StringBuffer localFunctionCalls;

		private static final Logger logger = LogManager.getLogger();
		
		crmlParser parser;

		public crmlVisitorImpl (crmlParser parser) {
			
			this.parser = parser;

			types_mapping = new HashMap<String, String>();

			// table for mapping CRML built in types to Modelica types
			types_mapping.put("Boolean", 	 "CRML.ETL.Types.Boolean4");
			types_mapping.put("Period", 	 "CRML.Period");
			types_mapping.put("Requirement", "CRML.ETL.Types.Boolean4");
			types_mapping.put("Clock", 		 "CRML.CRMLClock");
			types_mapping.put("Real", 		 "Real");
			types_mapping.put("Integer", 	 "Integer");
			types_mapping.put("String", 	 "String");
			types_mapping.put("Set", 	 	 "CRML.CRMLSet");

			operators_map = OperatorMapping.get_operator_map();


			variable_types = new HashMap<String, String>();

			localFunctionCalls = new StringBuffer();

			user_operators = new HashMap<String, Signature>();

			counter = 0; //used to create unique names for automatically generated blocks

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
			
			if(ctx.external_def()!= null)
				return visit (ctx.external_def());
			
			
			// TODO sets, comments, type

			throw new ParseCancellationException("Unable to translate in element_def : "+ ctx.getText()+ '\n');
		}
		
		@Override public Value visitExternal_def(External_defContext ctx) {
			
			String var_type = "";
			String var_name;
			StringBuffer var_names = new StringBuffer();
			
			if (ctx.type() != null)
				// convert the type if it is a built in
				if(ctx.type().builtin_type()!=null)
					var_type = types_mapping.get(ctx.type().builtin_type().getText());
				else 
					var_type = ctx.type().id().getText();
			
			// TODO translate structure types
			if(ctx.structure_type()!=null)
				throw new ParseCancellationException("need to implement structure type translation : "+ ctx.getText()+ '\n');
			
			int i =0;
			for (IdContext e:ctx.id()) {
				var_name = e.getText();
				var_names.append(var_name);
				variable_types.put(var_name, var_type);
				i++;
				if (i< ctx.id().size())
					var_names.append(" ,");
			}
			
			return new Value(var_type + " " + var_names + ";", "var_type");
			
		}	
		
		@Override public Value visitCategory(CategoryContext ctx) {
			return new Value("", "Category");
			
		}		
		
		@Override public Value visitClass_def(Class_defContext ctx) {
			StringBuffer buffer = new StringBuffer();
			Value val;
			
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
			
			return new Value (buffer.toString(), "Class_Definition");
		}

		@Override public Value visitClass_var_def(Class_var_defContext ctx) {
			
			
			Value value = visit(ctx.var_def());			
			
			//TODO translate class qualifier
			//TODO translate alias, comment, forbid
			
			return new Value (value.contents, "Class_Variable");
		}
		
		@Override public Value visitOperator(crmlParser.OperatorContext ctx) {
			StringBuffer definition = new StringBuffer("model ");
			StringBuffer modelName = new StringBuffer();

			HashMap<String, String> store_variable_types = new HashMap<String, String> (variable_types);
			StringBuffer store_localFunctionCalls = new StringBuffer(localFunctionCalls);

			localFunctionCalls = new StringBuffer();

			// generate function name
			for (User_keywordContext k : ctx.operator_def().user_keyword()) {
				
			modelName.append(k.getText()); 
			} 

			definition.append(modelName);
			definition.append("\n");

			String bType = types_mapping.get(ctx.type().getText());
			if (bType == null)
				bType=ctx.type().getText();
			
			// keep a list of operator signatures for typing calls
			Signature sig = new Signature();
			sig.return_type = bType;
			sig.return_name = "out";

			// generate variables
				int i=0;
				for (IdContext v : ctx.operator_def().id()) {
				String type = ctx.operator_def().type().get(i).getText();
				String mtype = types_mapping.get(type);
				if(mtype == null) mtype = type;
				definition.append("input " + types_mapping.get(type) + " " + v.getText() + ";\n");
				variable_types.put(v.getText(), type);
		
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
			variable_types = store_variable_types;

			//restore local function calls
			localFunctionCalls = store_localFunctionCalls;

			return new Value (definition.toString(), "Operator");
		}

		@Override public Value visitTemplate(crmlParser.TemplateContext ctx) {

			StringBuffer definition = new StringBuffer("model ");
			StringBuffer modelName = new StringBuffer();

			HashMap<String, String> store_variable_types = new HashMap<String, String> (variable_types);
			StringBuffer store_localFunctionCalls = new StringBuffer(localFunctionCalls);

			localFunctionCalls = new StringBuffer();

			// generate function name
			for (User_keywordContext k : ctx.user_keyword()) {
				
				modelName.append(k.getText());
				
			}

			definition.append(modelName);
			definition.append("\n");

			String bType = types_mapping.get("Boolean");

			// keep a list of operator signatures for typing calls
			Signature sig = new Signature();
			sig.return_type = "Boolean";
			sig.return_name = "out";

			// generate variables
			for (IdContext v : ctx.id()) {
				definition.append("input " + bType + " " + v.getText() + ";\n");
				variable_types.put(v.getText(), "Boolean");
			
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
			variable_types = store_variable_types;

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

				variable_types.put(ctx.id().getText(), var_t);


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
				if (variable_types.containsKey(ctx.id().getText()))
					 return new Value (ctx.getText(), variable_types.get(ctx.getText()));

				else throw new ParseCancellationException("unable to get variable type : " + ctx.id().getText() + '\n');
			}
			
			 
			/*if the expression is a componenent reference
			if(ctx.crml_component_reference()!=null)
				return visit(ctx.crml_component_reference()); */
			
			// if the expression is a user defined call
			if(ctx.user_operator_call() != null) {
				return visit(ctx.user_operator_call());
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
						

			throw new ParseCancellationException("unable to parse expression : " + ctx.getText() + '\n');
		}
		
		@Override 
		public Value visitComponent_reference(Component_referenceContext ctx) {
		// TODO fix component references
			throw new ParseCancellationException("component references not implemented yet : " + ctx.toStringTree() + '\n');
		}
		
		
		@Override
		public Value visitClock_constructor(Clock_constructorContext ctx) {
			String varName = "c"+ counter++;
			String clockType = types_mapping.get("Clock");
			localFunctionCalls.append(clockType + " " + varName + "(b=" + ctx.id().getText() + ");\n");
			localFunctionCalls.append("CRML.CRMLClock_build " + varName+"_init(clock =" + varName + ");");
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
				
				res = op+ " " + name+ "(" + sign.variable_names.get(0) + "="+left.contents+"," +
						sign.variable_names.get(1)+ "="+right.contents+");";
			} else {
				Value operand = visit(exp.get(0));
				
				res = op+ " " + name+ "(" + sign.variable_names.get(0) + "="+operand.contents+");";
			}
				
			localFunctionCalls.append(res);
			counter++;
			return new Value ("name.out", sign.return_type);
		
		}
		
		private Value apply_runary_op(String op, Value right) {
			
			
			Signature op_t = OperatorMapping.is_defined(operators_map, op, right.type);
			
			if (op_t== null) 
				throw new ParseCancellationException("Built in operator undefined : " + op + '\n');
			
			if (op_t.isOperator) { // check if predefined operator maps to Modelica operator
							
				// special case if the return is boolean and needs to be wrapped in a CRML boolean
				if (op_t.return_type.equals("Boolean"))
					return new Value ("CRML.ETL.Types.cvBooleanToBoolean4(" + op_t.function_name + " " + right.contents + ")", "Boolean");
				
				return new Value (op_t.return_type + " " + right.contents, op_t.return_type);
			}
			
			// operator translates to function call
				String name=op+counter;
						
						
				String res = op+ " " + name+ "(" + op_t.variable_names.get(0) + " = "+right.contents+");";
				localFunctionCalls.append(res);
				counter++;
						
				return new Value (name + ".out", op_t.return_type);
			
		}

		private Value apply_lunary_op(String op, Value left) {
			Signature op_t = OperatorMapping.is_defined(operators_map, op, left.type);
			
			if (op_t== null) 
				throw new ParseCancellationException("Built in operator undefined : " + op + '\n');
			
			if (op_t.isOperator) { // check if predefined operator maps to Modelica operator
							
				// special case if the return is boolean and needs to be wrapped in a CRML boolean
				if (op_t.return_type.equals("Boolean"))
					return new Value ("CRML.ETL.Types.cvBooleanToBoolean4(" + op_t.function_name + " " + left.contents + ")", "Boolean");
				
				return new Value (op_t.return_type + " " + left.contents, op_t.return_type);
			}
			
			// operator translates to function call
			String name=op+counter;
			
			String res = op+ " " + name+ "(" + op_t.variable_names.get(0) + " = "+left.contents+");";
			localFunctionCalls.append(res);
			counter++;
					
			return new Value (name + ".out", op_t.return_type);
		}
		
		private Value apply_binary_op(String op, Value left, Value right) {
			// check if predefined operator maps to Modelica operator
			
			Signature op_t = OperatorMapping.is_defined(operators_map, op, left.type, right.type);
			
			if (op_t== null) 
				throw new ParseCancellationException("Built in operator undefined : " + op + " on " + left.type + " and " + right.type +'\n');
			
			if (op_t.isOperator) { // check if predefined operator maps to Modelica operator
				
				// special case if the return is boolean and needs to be wrapped in a CRML boolean
				if (op_t.return_type.equals("Boolean"))
					return new Value ("CRML.ETL.Types.cvBooleanToBoolean4(" + left.contents + " " + op + " " + right.contents + ")", "Boolean");
				
				return new Value (left.contents + " " + op_t.function_name + " " + right.contents, op_t.return_type);
			}
			
			// operator translates to function call
			String name=op+counter;
			
			
			String res = op+ " " + name+ "("+ op_t.variable_names.get(0) + " = "+left.contents+","
					+ op_t.variable_names.get(1) + " = "+right.contents+");";
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
