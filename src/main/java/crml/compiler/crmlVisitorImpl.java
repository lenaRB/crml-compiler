package crml.compiler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.antlr.v4.runtime.misc.ParseCancellationException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import grammar.crmlBaseVisitor;
import grammar.crmlParser;
import grammar.crmlParser.Category_pairContext;
import grammar.crmlParser.Class_var_defContext;
import grammar.crmlParser.Element_defContext;
import grammar.crmlParser.ExpContext;
import grammar.crmlParser.IdContext;
import grammar.crmlParser.User_keywordContext;

// TODO strip new variable names

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
		
		private CategoryMapping category_map;
		
		private String current_category=null;
		crmlParser parser;
		
		private String prefix= ""; //to keep track of variable prefix

		private String input_prefix;
		private String output_prefix;

		Boolean saveExtrnal = false;
		List<String> external_variables;

		public crmlVisitorImpl (crmlParser parser, List<String> external_variables, Boolean causal){
			this(parser, causal);
			saveExtrnal= true;
			this.external_variables = external_variables;
		}

		public crmlVisitorImpl (crmlParser parser, Boolean causal) {

		// FIXME check that class name and class file match
			
			this.parser = parser;

			if (causal) {
				input_prefix = "input";
				output_prefix = "output";
			} else {
				input_prefix = "";
				output_prefix = "";
			};

			types_mapping = new HashMap<String, String>();

			// table for mapping CRML built in types to Modelica types
			types_mapping.put("Boolean", 	 "CRMLtoModelica.Types.Boolean4");
			types_mapping.put("Period", 	 "CRMLtoModelica.Types.CRMLPeriod");
			types_mapping.put("Periods", 	 "CRMLtoModelica.Types.CRMLPeriods");
			types_mapping.put("Event", 	 	 "CRMLtoModelica.Types.Event");
			types_mapping.put("Requirement", "CRMLtoModelica.Types.Boolean4");
			types_mapping.put("Clock", 		 "CRMLtoModelica.Types.CRMLClock");
			types_mapping.put("Real", 		 "Real");
			types_mapping.put("Integer", 	 "Integer");
			types_mapping.put("String", 	 "String");

			operators_map = OperatorMapping.get_operator_map();
			
			category_map = new CategoryMapping();

			localFunctionCalls = new StringBuffer();

			user_operators = new HashMap<String, Signature>();

			counter = 0; //used to create unique names for automatically generated blocks

			variableTable = new VariableData();
		}

		@Override public Value visitDefinition(crmlParser.DefinitionContext ctx) {
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
		
		@Override public Value visitUninstantiated_def(crmlParser.Uninstantiated_defContext ctx) {
			
			String var_type="", var_modelica_type="";
			String var_name;
			StringBuffer var_names = new StringBuffer();
			String var_prefix;
			
			Boolean isSet=null;
			
			
			if(ctx.static_qualifier().getText().contentEquals("parameter"))
				var_prefix = "parameter ";
			else{
				var_prefix = "";

			}
			
			if (ctx.type() != null) {
				// convert the type if it is a built in
				if(ctx.type().builtin_type()!=null) {
					var_type = ctx.type().builtin_type().getText();
					var_modelica_type = types_mapping.get(var_type);				 
				}
					
				else {
					var_type = ctx.type().id().getText();
					var_modelica_type = var_type;
				}
				isSet = (ctx.type().empty_set()!=null);
				if(isSet)
					var_modelica_type+= " [:] ";
			}
			
			// TODO translate structure types
			else if(ctx.structure_type()!=null)
				throw new ParseCancellationException("need to implement structure type translation : "+ ctx.getText()+ '\n');
					
			
			int i = 0;
			for (IdContext e:ctx.id()) {
				var_name = e.getText();
				var_names.append(var_name);
				
				variableTable.putVariable(var_name, var_type, isSet, prefix);
				variableTable.putlocalVariable(var_name, var_type, isSet);
				
				i++;
				if (i< ctx.id().size())
					var_names.append(" ,");
							
			}

			return new Value(var_prefix + var_modelica_type + " " + var_names + ";\n", var_type);
			
		}	 
		
		@Override public Value visitCategory(crmlParser.CategoryContext ctx) {
			HashMap<String, String> ctg_pairs = new HashMap<>();
			//TOFIX check that operators being mapped actually exist
			for(Category_pairContext i : ctx.category_pair()){
				ctg_pairs.put(i.op(0).getText(), i.op(1).getText());
				System.out.println(i.op(0).getText() +  " : " + i.op(1).getText() + "\n");
			}	
			category_map.addCategory(ctx.id().getText(), ctg_pairs);
			System.err.println("Added category " + ctx.id().getText() + "\n");

			return new Value("", "Category");		
		}	
		
		@Override public Value visitClass_def(crmlParser.Class_defContext ctx) {
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
			variableTable.cleanLocalVariables();
			
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

			String bType = types_mapping.get(ctx.type().getText());
			 if (bType == null)
				bType=ctx.type().getText();
			
			// keep a list of operator signatures for typing calls
			Signature sig = new Signature();
			sig.return_type = ctx.type().getText();
			sig.return_name = "out";
			sig.function_name = modelName.toString();
			String mtype = bType;

			definition.append(output_prefix + bType + " out; \n");


			// generate variables
				int i=0;
				for (IdContext v : ctx.operator_def().id()) {
				String type = ctx.operator_def().type().get(i).getText();
				mtype = types_mapping.get(type);
				if(mtype == null) mtype = type;
				definition.append(input_prefix + mtype + " " + v.getText() + ";\n");	
				
				// TODO fix set support
				variableTable.putlocalVariable(v.getText(), type, false);
				
				sig.variable_names.add(v.getText());
				sig.variable_types.add(mtype);
			    i++;
			}

			//check for Category
			if(ctx.operator_def().apply_category()!=null)
				if(category_map.getCategory(ctx.operator_def().apply_category().id().getText())!= null)
					sig.setCategory(ctx.operator_def().apply_category().id().getText());
				else throw new ParseCancellationException ("Undefined Category " + ctx.operator_def().apply_category().id().getText());

	
			user_operators.put(modelName.toString(), sig);

			
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

			// restore category
			current_category = null;
			
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
				definition.append(input_prefix + bType + " " + v.getText() + ";\n");
				
				// TODO fix sets
				variableTable.putlocalVariable(v.getText(), "Boolean", false);
			
				sig.variable_names.add(v.getText());
				sig.variable_types.add(bType);
			}

			user_operators.put(modelName.toString(), sig);

			definition.append(output_prefix + bType + " out; \n");

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
		Value v;
		Boolean isSet = false;
			

		var_t = ctx.type().getText();
							
		if(types_mapping.containsKey(var_t))
			mapped_t= types_mapping.get(var_t);
		else
			mapped_t=var_t;
				
		isSet = (ctx.type().empty_set()!=null);
		if(isSet)
			mapped_t+= " [:] ";

		buffer.append(mapped_t + " ");
		buffer.append(ctx.id().getText());
				

		//TODO fix set variables

		if(saveExtrnal && ctx.is_external!=null)
			external_variables.add(mapped_t + " " +ctx.id().getText() + "\n");
		
				
		variableTable.putVariable(ctx.id().getText(), var_t, isSet, prefix);
		variableTable.putlocalVariable(ctx.id().getText(), var_t, isSet);

		if(ctx.exp()!=null) {
			v=visit(ctx.exp());
			if(!v.type.equals("new")) // check that it is not a constructor
				buffer.append(" = " + v.contents);
		}
		buffer.append(";\n");

		return new Value(buffer.toString(), "Definition");
	}
		

	@Override public Value visitExp(crmlParser.ExpContext ctx) {
		Value right, left;
			
		// if the expression is a constructor
		if(ctx.constructor() != null)
			return visit(ctx.constructor());
				
		// if the expression is a constant
		if(ctx.constant()!=null)
			return visit(ctx.constant());

		// if the expression is a variable
		if(ctx.id()!=null) 
			return visit(ctx.id());
			 
		//if the expression is a componenent reference
		if(ctx.crml_component_reference()!=null) {
			VariableData.VariableType v_type = variableTable.getVariableInfo(ctx.crml_component_reference().getText());
			if (v_type!=null)
				return new Value (ctx.getText(), v_type.type, v_type.isSet, v_type.setPath);
			else 
				throw new ParseCancellationException("unable to get variable type : " + ctx.crml_component_reference().getText() + '\n');}
				
				
		// if expression is an if-then-else
		if(ctx.if_exp() != null)
			return visit(ctx.if_exp());

		// if the expression is a built in operator
		if(ctx.builtin_op()!= null){
			String op=null;
			
			if(current_category!=null) // we check if we should apply the category
				op = category_map.getCategory(current_category).get(ctx.builtin_op().getText());
			if (op==null) op = ctx.builtin_op().getText();
				
			System.out.println("Category: " + current_category + " og_op : " + ctx.builtin_op().getText()+ " og_op : "+ op);
			
			if (ctx.binary!=null){
				left = visit(ctx.left);
				right = visit(ctx.right);
				Value result = apply_binary_op(op, left, right);
				return result;
			} else if(ctx.lunary!= null) {
				left = visit(ctx.left);					
				Value result = apply_lunary_op(op, left);
				return result;
			}
		}	
		if(ctx.runary!= null) {
			String op=null;
			if(current_category!=null) // we check if we should apply the category
				op = category_map.getCategory(current_category).get(ctx.runary.getText());
			if (op==null) op = ctx.runary.getText();
			
			System.out.println("Category: " + current_category + " og_op : " + ctx.runary.getText()+ " og_op : "+ op);
			right = visit(ctx.right);					
			Value result = apply_runary_op(op, right);
			return result;
		}

		// if the expression is in parenthesis
		if(ctx.sub_exp()!=null)
			return visit(ctx.sub_exp().exp());
		
		if(ctx.period_op()!=null)
			return visit(ctx.period_op());

		// if the expression is a user defined call
		if(ctx.user_keyword() != null) {
			List<crmlParser.ExpContext> args = new ArrayList<>();
			
			// put together user operator name
			UserOperatorCall uc = reconstructUserOperator(ctx, "", args);
			
			String op=null;
			if(current_category!=null) // we check if we should apply the category
				op = category_map.getCategory(current_category).get("'"+uc.name+"'");
			if (op==null) op = "'"+uc.name+"'";

			
			return apply_user_operator(op, uc.args);
		}
			
		// expression is a tick
		if(ctx.tick() != null) {
			Value cl = visit(ctx.tick().id());
			return apply_lunary_op("tick", cl);
		}	
			
		// expression is an object set
			
		if(ctx.set_def() != null)
			return visit(ctx.set_def());
			
		// if expression is integrate
		if (ctx.integrate()!=null){
			Value val = visit(ctx.integrate().exp(0));
			Value on = visit(ctx.integrate().exp(1));
			
			return apply_binary_op("integrate", val, on);
		}
	
		throw new ParseCancellationException("unable to parse expression : " + ctx.getText() + '\n');
	}
	

	private UserOperatorCall reconstructUserOperator(ExpContext ctx, String string, List<ExpContext> args) {
			if(ctx.user_keyword()!= null)// is part of the user operator
				if(ctx.ubinary!=null){// binary operator
					UserOperatorCall left, right;
					left = reconstructUserOperator(ctx.left, "", args);
					right = reconstructUserOperator(ctx.right, "", args);
				return new UserOperatorCall(left.name+ ctx.user_keyword().getText().replace("'", "")+right.name, args);
				} else {
				return reconstructUserOperator(ctx.exp(0), string+ctx.user_keyword().getText().replace("'", ""), args);
				}

		    
			args.add(0, ctx);
			return new UserOperatorCall(string, args);
		}

	@Override
	public Value visitSet_def(crmlParser.Set_defContext ctx) {
		return new Value ("Set", "{}", true);
	}

	@Override
	public Value visitPeriod_op(crmlParser.Period_opContext ctx) {
		
		Value left = visit(ctx.exp(0));
		Value right = visit(ctx.exp(1));

		Boolean lborder = (ctx.lb.getText().equals("["));
		Boolean rborder = (ctx.rb.getText().equals("]"));

		String varName = "p" + counter++;

		String periodType = types_mapping.get("Period");
			
		String code = 
			periodType + " " + varName +
			"(isLeftBoundaryIncluded=" + lborder.toString() + 
		    ", isRightBoundaryIncluded=" + rborder.toString() + 
			", start_event=" + left.contents + 
			", close_event=" + right.contents +");\n";


		localFunctionCalls.append(code);

		localFunctionCalls.append("CRMLtoModelica.Types.CRMLPeriod_build " + varName+"_init(P =" + varName + ");\n");
		
		return new Value (varName, "Period", false);
	}

	@Override
	public Value visitId(crmlParser.IdContext ctx){
		VariableData.VariableType v_type = variableTable.getVariableInfo(ctx.getText());
		if (v_type!=null)
			return new Value (ctx.getText(), v_type.type, v_type.isSet, v_type.setPath);

		else throw new ParseCancellationException(
			"unable to get variable type : " + ctx.getText() + '\n');
	}
		
	@Override
	public Value visitConstructor(crmlParser.ConstructorContext ctx) {
		
		if(ctx.type().getText().equals("Clock")) { // Clock constructor
		String varName = "c" + counter++;
		String clockType = types_mapping.get("Clock");
		
		//TODO add return type checking
		Value v = visit(ctx.exp());
			
		
		localFunctionCalls.append(clockType + " " + varName + "(b=" + v.contents + ");\n");
		localFunctionCalls.append("CRMLtoModelica.Types.CRMLClock_build " + varName+"_init(clock =" + varName + ");\n");
		return new Value (varName, "Clock");
		}

		// if the constructor is for Periods 
		//FIXME proper constructor initialisation
		if(ctx.type().getText().equals("Periods")){
			return new Value ("", "new");
		}

		// Constructor for events
		if(ctx.type().getText().equals("Event")){
		
			String eventType = types_mapping.get("Event");
			String e = "e" + counter++;
			Value v = visit(ctx.exp());
		
			localFunctionCalls.append(eventType + " " + e + "(b=" + v.contents + ");\n");
			localFunctionCalls.append("CRMLtoModelica.Types.CRMLEvent_build " + e +"_init(E =" + e + ");\n");
		
		
			return new Value (e, "new");
		}
		
		// Constructor with no expression - translates to nothing in Modelica
		
		if(ctx.exp()==null)
			return new Value ("", "new");
		
		// Constructor with expression - call corresponding function
		Value exp_val = visit(ctx.exp());
		Value result = apply_lunary_op(ctx.type().getText(), exp_val);
		return result;	
	}
		
		
		@Override 
		public Value visitComponent_reference(crmlParser.Component_referenceContext ctx) {
		// TODO fix component references
			
			throw new ParseCancellationException("component references not implemented yet : " + ctx.toStringTree() + '\n');
		}
		
		@Override
		public Value visitIf_exp(crmlParser.If_expContext ctx) {
			
			Value value_if, value_then, value_else;
			
			value_if = visit(ctx.if_e);
			
			value_then = visit (ctx.then_e);
			
			if (ctx.else_e != null) {
				value_else = visit(ctx.else_e);
				
				return new Value (" if (" + value_if.contents + "== CRMLtoModelica.Types.Boolean4.true4) then " 
						+  value_then.contents + " else " +  value_else.contents, 
						value_then.type);
			
			}
			return new Value (" if " + value_if.contents + " then " 
					+  value_then.contents, 
					value_then.type);			
			}
		
		
		
		private Value apply_user_operator(String op, List<ExpContext> exp) {
			String previous_category = null;
			// check if the operator is defined
			Signature sign = user_operators.get(op);
			if (sign== null)
				throw new ParseCancellationException("User operator undefined : " + op + "\n");
			
			if (sign.getCategory() != null){
				previous_category = current_category;
				current_category = sign.getCategory();
			}
			String name=op.substring(0, op.length()-1).replace(".", "_")+counter+'\'';
			
			String res;
			if (exp.size()==2) {
				Value left = visit(exp.get(0));
				Value right = visit(exp.get(1));
				
				res = sign.function_name + " " + name+ "(" + sign.variable_names.get(1) + "="+left.contents+"," +
						sign.variable_names.get(0)+ "="+right.contents+");\n";
			} else {
				Value operand = visit(exp.get(0));
				
				res = sign.function_name + " " + name+ "(" + sign.variable_names.get(0) + "="+operand.contents+");\n";
			}
				
			localFunctionCalls.append(res);
			counter++;

			current_category = previous_category; // restore
			return new Value (name+ ".out", sign.return_type);
		
		}
		
		private Value apply_runary_op(String op, Value right) {
			
			
			Signature op_t = OperatorMapping.is_defined(operators_map, op, right.type, right.isSet);
			
			if (op_t== null) 
				throw new ParseCancellationException("Built in operator undefined : " + op + " on " + right.type +'\n');
			
			if (op_t.mtype == Signature.Type.OPERATOR) { // check if predefined operator maps to Modelica operator
							
				// special case if the return is boolean and needs to be wrapped in a CRML boolean
				if (op_t.return_type.equals("Boolean"))
					return new Value ("CRMLtoModelica.Functions.cvBooleanToBoolean4(" + op_t.function_name + " " + right.contents + ")", "Boolean");
				
				return new Value (op_t.function_name + " " + right.contents, op_t.return_type);
			} else if (op_t.mtype == Signature.Type.FUNCTION) {
				return new Value (op_t.function_name +"(" + right.contents + ")", op_t.return_type);
				
			}
			
			// operator translates to block instantiation
				String name=op_t.function_name.replace(".", "_")+counter;
						
						
				String res = op_t.function_name + " " + name+ "(" + op_t.variable_names.get(0) + " = "+right.contents+");\n";
				localFunctionCalls.append(res);
				counter++;
						
				return new Value (name + ".out", op_t.return_type, op_t.is_return_set);
			
		}

		private Value apply_lunary_op(String op, Value left) {
			Signature op_t = OperatorMapping.is_defined(operators_map, op, left.type, left.isSet);
			
			if (op_t== null) 
				throw new ParseCancellationException("Built in operator undefined : " + op + " on " + left.type  + " isSet "+ left.isSet+ '\n');
			
			if (op_t.mtype == Signature.Type.OPERATOR) { // check if predefined operator maps to Modelica operator
							
				// special case if the return is boolean and needs to be wrapped in a CRML boolean
				if (op_t.return_type.equals("Boolean"))
					return new Value ("CRMLtoModelica.Functions.cvBooleanToBoolean4(" + op_t.function_name + " " + left.contents + ")", "Boolean");
				
				return new Value (op_t.function_name + " " + left.contents, op_t.return_type, op_t.is_return_set);
			} else if (op_t.mtype == Signature.Type.FUNCTION) {
				return new Value (op_t.function_name +"(" + " " + left.contents + ")", op_t.return_type, op_t.is_return_set);
				
			}
			
			// operator translates to block instantiation
			String name=op_t.function_name.replace(".", "_")+counter;
			
			String res = op_t.function_name+ " " + name+ "(" + op_t.variable_names.get(0) + " = "+left.contents+");\n";
			localFunctionCalls.append(res);
			counter++;
					
			return new Value (name + ".out", op_t.return_type, op_t.is_return_set);
		}
		
		private Value apply_binary_op(String op, Value left, Value right) {
			// check if predefined operator maps to Modelica operator
			
			Signature op_t = OperatorMapping.is_defined(operators_map, op, left.type, right.type, left.isSet, right.isSet);
			
			if (op_t== null) 
				throw new ParseCancellationException("Built in operator undefined : " + op + " on " + left.type + " and " + right.type +'\n');
			
			if (op_t.mtype == Signature.Type.OPERATOR) { // check if predefined operator maps to Modelica operator
				
				// special case if the return is boolean and needs to be wrapped in a CRML boolean
				if (op_t.return_type.equals("Boolean"))
					return new Value ("CRMLtoModelica.Functions.cvBooleanToBoolean4(" + left.contents + " " + op + " " + right.contents + ")", "Boolean");
				
				return new Value (left.contents + " " + op_t.function_name + " " + right.contents, op_t.return_type, op_t.is_return_set);
			} else if (op_t.mtype == Signature.Type.FUNCTION) {
				return new Value (op_t.function_name +"(" + right.contents + ", " + left.contents + ")", op_t.return_type, op_t.is_return_set);
				
			} else if (op_t.mtype == Signature.Type.SET_OP) { // generate a set operator
				
				
				
				String block_name = op_t.function_name + "int" + counter;
				String block_type = op_t.function_name.replace(".", "_") + counter++;
				StringBuffer set_block = new StringBuffer("model " + block_type + "\n ") ;
				StringBuffer for_loops = new StringBuffer("") ;
				StringBuffer for_loop_exp = new StringBuffer("") ;
				
				Signature singular_op = OperatorMapping.is_defined(operators_map, op, left.type, right.type, false, false);
				if (singular_op== null) 
					throw new ParseCancellationException("Cannot apply operator to set elements : " + op + " on " + left.type + " and " + right.type +'\n');
				
				if (left.isSet && right.isSet) {
					
					
				}else if (left.isSet) {
					
					for (int i=0; i< left.setPath.size()-1; i++) {
						for_loops.append("for i" +i+ " in " + left.setPath + "loop");
						//for_loop_exp.append(left.setPath[i] + "[i"+i+"]");
					}
				}
				else {
					
				}
				
				set_block.append("end " + block_type + ";\n");
				
				localFunctionCalls.append(set_block);
				
				return new Value (block_name + ".out", op_t.return_type, op_t.is_return_set);
			}
			
			// operator translates to block instantiation
			String name=op_t.temp_var_name.replace('.', '_')+counter;
			
			
			String res = op_t.function_name+ " " + name+ "("+ op_t.variable_names.get(0) + " = "+left.contents+","
					+ op_t.variable_names.get(1) + " = "+right.contents+");\n";
			
			localFunctionCalls.append(res);
			counter++;
			
			return new Value (name + ".out", op_t.return_type, op_t.is_return_set);
				
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
			
			if(ctx.time() != null)
				return new Value("time", "Real");

			String val = ctx.getText();

			throw new ParseCancellationException("Unable to evaluate constant " + val + '\n');
		}

		@Override public Value visitBoolean_value(crmlParser.Boolean_valueContext ctx) {
			String bool_val;

			bool_val = ctx.getText();

			switch(bool_val) {
			  case "true":			return new Value ("CRMLtoModelica.Types.Boolean4.true4", "Boolean");
			  case "false":			return new Value ("CRMLtoModelica.Types.Boolean4.false4", "Boolean");
			  case "undecided": 	return new Value ("CRMLtoModelica.Types.Boolean4.undecided", "Boolean");
			  case "undefined":		return new Value ("CRMLtoModelica.Types.Boolean4.undefined", "Boolean");
			  default:
				  logger.error("Not a valid value for a boolean");
			throw new ParseCancellationException("Not a valid value for a boolean " + ctx.getText() + '\n');
					
			}

		}
				
}
