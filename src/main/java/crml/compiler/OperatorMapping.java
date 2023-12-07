package crml.compiler;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import crml.compiler.Signature.Type;

public class OperatorMapping {
	
	public static HashMap<String, List<Signature>> get_operator_map (){
		HashMap<String, List<Signature>> built_in_operators = new HashMap<String, List<Signature>>();
		
		// table for mapping CRML built in operators to library functions
		
		//TODO add full operator list
		
		//TODO add sets
		
		// Integer signatures
		List<String> int1 = Arrays.asList("Integer");
		List<String> int2 = Arrays.asList("Integer", "Integer");
		
		
		// Real signatures
		List<String> real1 = Arrays.asList("Real");
		List<String> real2 = Arrays.asList("Real", "Real");
		
		// Real + Int mix and match
		List<String> intreal = Arrays.asList("Integer", "Real");
		List<String> realint = Arrays.asList("Real", "Integer");
		
		// Boolean signatures
		List<String> bool1 = Arrays.asList("Boolean");
		List<String> bool2 = Arrays.asList("Boolean", "Boolean");
		
		// String signatures
		List<String> string2 = Arrays.asList("String", "String");

		// string + int/real mix and match
		List<String> stringint = Arrays.asList("String", "Integer");
		List<String> intstring = Arrays.asList("Integer", "String");
		List<String> stringreal = Arrays.asList("String", "Real");
		List<String> realstring = Arrays.asList("Real", "String");
		
		// Period mix and match signatures
		List<String> periodReal = Arrays.asList("Period", "Real");
		List<String> realPeriod = Arrays.asList("Real", "Period");
		
		// Default operand names in built-in functions
		List<String> params = Arrays.asList("r1", "r2");
		
		// SetLists
		List<Boolean> setOnset = Arrays.asList(true, true);
		List<Boolean> setUnary = Arrays.asList(true);
		List<Boolean> setOnvar = Arrays.asList(true, false);
		List<Boolean> varOnset = Arrays.asList(false, true);
		
		
		
		// + operators
		List<Signature> plus_sigs = 
				Arrays.asList(new Signature("+", int2, "Integer", Type.OPERATOR),
						new Signature(" ", int1, "Integer", Type.OPERATOR),
						new Signature("+", real2, "Real", Type.OPERATOR),
						new Signature(" ", real1, "Real", Type.OPERATOR),
						new Signature("+", string2, "String", Type.OPERATOR),
						new Signature("+", stringint, "String", Type.OPERATOR),
						new Signature("+", intstring, "String", Type.OPERATOR),
						new Signature("+", stringreal, "String", Type.OPERATOR),
						new Signature("+", realstring, "String", Type.OPERATOR),
						new Signature("CRMLtoModelica.Functions.add4", bool2, params, "Boolean", Type.FUNCTION));
		
		
		
		built_in_operators.put("+", plus_sigs);
		
		// - operators
				List<Signature> minus_sigs = 
						Arrays.asList(new Signature("-", int2, "Integer", Type.OPERATOR),
								new Signature("-", int1, "Integer", Type.OPERATOR),
								new Signature("-", real1, "Real", Type.OPERATOR),
								new Signature("-", real2, "Real", Type.OPERATOR),
								new Signature("CRMLtoModelica.Functions.diff4", bool2, params, "Boolean", Type.FUNCTION));
						
		built_in_operators.put("-", minus_sigs);
		
		// * operators
		List<Signature> mult_sigs = 
				Arrays.asList(new Signature("*", int2, "Integer", Type.OPERATOR),
						new Signature("*", real2, "Real", Type.OPERATOR),
						new Signature("CRMLtoModelica.Functions.mul2x4", bool2, params, "Boolean", Type.FUNCTION));
				
		built_in_operators.put("*", mult_sigs);
		
		// / operators
				List<Signature> div_sigs = 
						Arrays.asList(new Signature("/", int2, "Integer", Type.OPERATOR),
								new Signature("/", real2, "Real", Type.OPERATOR),
								new Signature("/", intreal, "Real", Type.OPERATOR),
								new Signature("/", realint, "Real", Type.OPERATOR));
						
				built_in_operators.put("/", div_sigs);

		// ^ operators
		List<Signature> expo_sigs = 
				Arrays.asList(new Signature("^", int2, "Integer", Type.OPERATOR),
						new Signature("^", realint, "Real", Type.OPERATOR));
		built_in_operators.put("^", expo_sigs);

		// <= operators
		List<Signature> leq_sigs = 
				Arrays.asList(new Signature("<=", int2,  "Boolean", Type.OPERATOR),
						new Signature("<=", real2, "Boolean", Type.OPERATOR),
						new Signature("<=", intreal, "Boolean", Type.OPERATOR),
						new Signature("<=", realint, "Boolean", Type.OPERATOR),
						new Signature("CRMLtoModelica.realPeriodleq", realPeriod, params, "Boolean", "leq", Type.BLOCK),
						new Signature("CRMLtoModelica.Blocks.Logical4.leq", bool2, params, "Boolean", "leq", Type.BLOCK));
		
		built_in_operators.put("<=", leq_sigs);
		
		// < operators
				List<Signature> le_sigs = 
						Arrays.asList(new Signature("<", int2,  "Boolean", Type.OPERATOR),
								new Signature("<", real2, "Boolean", Type.OPERATOR),
								new Signature("<", intreal, "Boolean", Type.OPERATOR),
								new Signature("<", realint, "Boolean", Type.OPERATOR),
								new Signature("leqArray", realint, params, "Boolean", Type.SET_OP, setOnvar, true),
								new Signature("CRMLtoModelica.Blocks.realPeriodleq", realPeriod, params, "Boolean", Type.BLOCK),
								new Signature("CRMLtoModelica.Blocks.Logical4.leq", bool2, params, "Boolean", "leq", Type.BLOCK));
				
				built_in_operators.put("<", le_sigs);
		
		// >= operators
				List<Signature> geq_sigs = 
						Arrays.asList(new Signature(">=", int2,  "Boolean", Type.OPERATOR),
								new Signature(">=", real2, "Boolean", Type.OPERATOR),
								new Signature(">=", intreal, "Boolean", Type.OPERATOR),
								new Signature(">=", realint, "Boolean", Type.OPERATOR),
								new Signature("CRMLtoModelica.Blocks.Logical4.geq", bool2, params, "Boolean", Type.FUNCTION));
				
				built_in_operators.put(">=", geq_sigs);
				
		// > operators
				List<Signature> gr_sigs = 
						Arrays.asList(new Signature(">", int2,  "Boolean", Type.OPERATOR),
								new Signature(">", real2, "Boolean", Type.OPERATOR),
								new Signature(">", intreal, "Boolean", Type.OPERATOR),
								new Signature(">", realint, "Boolean", Type.OPERATOR),
								new Signature("CRMLtoModelica.Functions.geq", bool2, params, "Boolean", Type.FUNCTION));
				
				built_in_operators.put(">", gr_sigs);
				
				
		// == operators
				List<Signature> eq_sigs = 
						Arrays.asList(new Signature("==", int2,  "Boolean", Type.OPERATOR),
								new Signature("==", real2, "Boolean", Type.OPERATOR),
								new Signature("==", intreal, "Boolean", Type.OPERATOR),
								new Signature("==", realint, "Boolean", Type.OPERATOR),
								new Signature("eqArray", realint, params, "Boolean", Type.SET_OP, setOnvar, true),
								new Signature("CRMLtoModelica.Blocks.realPeriodeq", realPeriod, params, "Boolean", Type.BLOCK),
								new Signature("CRMLtoModelica.Blocks.Logical4.eq", bool2, params, "Boolean", "eq", Type.BLOCK));
				
				built_in_operators.put("==", eq_sigs);
				
		// <> operators
				List<Signature> neq_sigs = 
						Arrays.asList(new Signature("<>", int2,  "Boolean", Type.OPERATOR),
								new Signature("<>", real2, "Boolean", Type.OPERATOR),
								new Signature("<>", intreal, "Boolean", Type.OPERATOR),
								new Signature("<>", realint, "Boolean", Type.OPERATOR),
								new Signature("neqArray", realint, params, "Boolean", Type.SET_OP, setOnvar, true),
								new Signature("CRMLtoModelica.realPeriodneq", realPeriod, params, "Boolean",  Type.BLOCK),
								new Signature("CRMLtoModelica.Blocks.Logical4.neq", bool2, params, "Boolean", "neq", Type.BLOCK));
				
				built_in_operators.put("<>", neq_sigs);
				
		// cos operators
				
				List<Signature> cos_sigs = 
						Arrays.asList(new Signature("Modelica.Math.cos", int1,  "Real", Type.FUNCTION),
								new Signature("Modelica.Math.cos", real1, "Real", Type.FUNCTION));
				
				built_in_operators.put("cos", cos_sigs);

	    // acos operators
				
				List<Signature> acos_sigs = 
						Arrays.asList(new Signature("Modelica.Math.acos", int1,  "Real", Type.FUNCTION),
								new Signature("Modelica.Math.acos", real1, "Real", Type.FUNCTION));
				
				built_in_operators.put("acos", acos_sigs);
				
		// sin operators
				List<Signature> sin_sigs = 
						Arrays.asList(new Signature("Modelica.Math.sin", int1,  "Real", Type.FUNCTION),
								new Signature("Modelica.Math.sin", real1, "Real", Type.FUNCTION));
				
				built_in_operators.put("sin", sin_sigs);
				
		// asin operators
				List<Signature> asin_sigs = 
						Arrays.asList(new Signature("Modelica.Math.asin", int1,  "Boolean", Type.FUNCTION),
								new Signature("Modelica.Math.asin", real1, "Boolean", Type.FUNCTION));
				
				built_in_operators.put("asin", asin_sigs);
				
		// exp operators
				List<Signature> exp_sigs = 
						Arrays.asList(new Signature("Modelica.Math.exp", int1,  "Real", Type.FUNCTION),
								new Signature("Modelica.Math.exp", real1, "Real", Type.FUNCTION));
				
				built_in_operators.put("exp", exp_sigs);
	    
		// mod operators
				List<Signature> mod_sigs = 
						Arrays.asList(new Signature("Modelica.Math.exp", int2,  "Integer", Type.FUNCTION),
								new Signature("Modelica.Math.exp", real2, "Real", Type.FUNCTION),
								new Signature("Modelica.Math.exp", intreal, "Real", Type.FUNCTION),
								new Signature("Modelica.Math.exp", realint, "Real", Type.FUNCTION));
				
				built_in_operators.put("mod", mod_sigs);
				
		// log operators
				
				List<Signature> log_sigs = 
						Arrays.asList(new Signature("Modelica.Math.log", int1,  "Real", Type.FUNCTION),
								new Signature("Modelica.Math.log", real1, "Real", Type.FUNCTION));
				
				built_in_operators.put("log", log_sigs);
				
		// log10 operators
				
				List<Signature> log10_sigs = 
						Arrays.asList(new Signature("Modelica.Math.log10", int1,  "Real", Type.FUNCTION),
								new Signature("Modelica.Math.log10", real1, "Real", Type.FUNCTION));
				
				built_in_operators.put("log10", log10_sigs);
		
		// and operators	
		List<Signature> and_sigs = 
						Arrays.asList(new Signature("CRMLtoModelica.Functions.and4", bool2, params, "Boolean", Type.FUNCTION),
								new Signature("arrayAnd", bool1, params, "Boolean", Type.SET_OP, setUnary, false));
		built_in_operators.put("and", and_sigs);
		
		// or operators	
				List<Signature> or_sigs = 
								Arrays.asList(new Signature("CRMLtoModelica.Functions.or4", bool2, params, "Boolean", Type.FUNCTION),
										new Signature("arrayOr", bool1, params, "Boolean", Type.SET_OP, setUnary, false));
				built_in_operators.put("or", or_sigs);
		
		// not operators		
		List<Signature> not_sigs = 
				Arrays.asList(new Signature("CRMLtoModelica.Functions.not4", bool1, params, "Boolean", Type.FUNCTION),
						new Signature("arrayNot", bool1, params, "Boolean", Type.SET_OP, setUnary, false));
		built_in_operators.put("not", not_sigs);
		
		
		// end operators	TODO proper implementation	
				built_in_operators.put("end", 
						Arrays.asList(new Signature("CRMLtoModelica.endP", Arrays.asList("Period"), params, "Real", Type.BLOCK)));
				built_in_operators.put("start", 
						Arrays.asList(new Signature("CRMLtoModelica.startP", Arrays.asList("Period"), params, "Real", Type.BLOCK)));
		
		// filter operator
				built_in_operators.put("filter", 
						Arrays.asList(new Signature("CRMLtoModelica.CRML.filterC", Arrays.asList("Clock", "Boolean"), params, "Clock", Type.BLOCK)));
		
		// card operator
				built_in_operators.put("card", 
						Arrays.asList(new Signature("CRMLtoModelica.cardClock", Arrays.asList("Clock"), params, "Integer", Type.BLOCK)));
		
		// CONSTRUCTORS TODO finalize constructor table
				
		// String
		List<Signature> string_sigs = 
				Arrays.asList(new Signature("String", int1, params, "String", Type.FUNCTION),
						new Signature("String", real1, params, "String", Type.FUNCTION),
						new Signature("CRMLtoModelica.Functions.Bool4toString", bool1, params, "String", Type.FUNCTION));
		
				built_in_operators.put("String", string_sigs);
		
		// Integer
				List<Signature> integer_sigs = 
						Arrays.asList(new Signature("Integer", int1, params, "integer", Type.FUNCTION),
								new Signature("Integer", real1, params, "integer", Type.FUNCTION));
				
				built_in_operators.put("Integer", integer_sigs);
				
		// Real
				List<Signature> real_sigs = 
						Arrays.asList(new Signature("Real", int1, params, "real", Type.FUNCTION),
								new Signature("Real", real1, params, "real", Type.FUNCTION));
				
				built_in_operators.put("Real", real_sigs);
	
				
		return built_in_operators;
	}
	
	public static Signature is_defined (HashMap<String, List<Signature>> operator_map, String op, String type, Boolean isSet) {
		
		List<Signature> sigs = operator_map.get(op);
		
		if(sigs==null)
			return null;
		
		for (Signature s:sigs) {
			if(s.variable_types.size()==1 && s.variable_types.get(0).equals(type) && s.variable_is_set.get(0) == isSet)
				return s;
		}
		
		return null;
	}

	public static Signature is_defined(HashMap<String, List<Signature>> operator_map, String op, String type1,
			String type2, Boolean isSet1, Boolean isSet2) {
		List<Signature> sigs = operator_map.get(op);
		
		if(sigs==null)
			return null;
		
		for (Signature s:sigs) {
			if(s.variable_types.size()==2 && s.variable_types.get(0).equals(type1) && s.variable_types.get(1).equals(type2)
					&& s.variable_is_set.get(0) == isSet1 && s.variable_is_set.get(1) == isSet2)
				return s;
		}
		
		return null;
	}

}
