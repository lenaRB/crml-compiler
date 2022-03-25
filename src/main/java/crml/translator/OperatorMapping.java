package crml.translator;

import java.util.HashMap;
import java.util.List;

import crml.translator.Signature.Type;

public class OperatorMapping {
	
	public static HashMap<String, List<Signature>> get_operator_map (){
		HashMap<String, List<Signature>> built_in_operators = new HashMap<String, List<Signature>>();
		
		// table for mapping CRML built in operators to library functions
		
		//TODO add full operator list
		
		// Integer signatures
		List<String> int1 = List.of("Integer");
		List<String> int2 = List.of("Integer", "Integer");
		
		
		// Real signatures
		List<String> real1 = List.of("Real");
		List<String> real2 = List.of("Real", "Real");
		
		// Real + Int mix and match
		List<String> intreal = List.of("Integer", "Real");
		List<String> realint = List.of("Real", "Integer");
		
		// Boolean signatures
		List<String> bool1 = List.of("Boolean");
		List<String> bool2 = List.of("Boolean", "Boolean");
		
		// String signatures
		List<String> string2 = List.of("String", "String");
		
		// Period mix and match signatures
		List<String> periodReal = List.of("Period", "Real");
		List<String> realPeriod = List.of("Real", "Period");
		
		// Default operand names in built-in functions
		List<String> params = List.of("r1", "r2");
		
		
		// + operators
		List<Signature> plus_sigs = 
				List.of(new Signature("+", int2, "Integer", Type.OPERATOR),
						new Signature(" ", int1, "Integer", Type.OPERATOR),
						new Signature("+", real2, "Real", Type.OPERATOR),
						new Signature(" ", real1, "Real", Type.OPERATOR),
						new Signature("+", string2, "String", Type.OPERATOR),
						new Signature("CRML.ETL.Evaluator.TemporalOperators.add4", bool2, params, "Boolean", Type.FUNCTION));
		
		
		
		built_in_operators.put("+", plus_sigs);
		
		// - operators
				List<Signature> minus_sigs = 
						List.of(new Signature("-", int2, "Integer", Type.OPERATOR),
								new Signature("-", int1, "Integer", Type.OPERATOR),
								new Signature("-", real1, "Real", Type.OPERATOR),
								new Signature("-", real2, "Real", Type.OPERATOR),
								new Signature("CRML.ETL.Evaluator.TemporalOperators.diff4", bool2, params, "Boolean", Type.FUNCTION));
						
		built_in_operators.put("-", minus_sigs);
		
		// * operators
		List<Signature> mult_sigs = 
				List.of(new Signature("*", int2, "Integer", Type.OPERATOR),
						new Signature("*", real2, "Real", Type.OPERATOR),
						new Signature("CRML.ETL.Evaluator.TemporalOperators.mul2x4", bool2, params, "Boolean", Type.FUNCTION));
				
		built_in_operators.put("*", mult_sigs);
		
		// / operators
				List<Signature> div_sigs = 
						List.of(new Signature("/", int2, "Integer", Type.OPERATOR),
								new Signature("/", real2, "Real", Type.OPERATOR));
						
				built_in_operators.put("/", div_sigs);

		// <= operators
		List<Signature> leq_sigs = 
				List.of(new Signature("<=", int2,  "Boolean", Type.OPERATOR),
						new Signature("<=", real2, "Boolean", Type.OPERATOR),
						new Signature("<=", intreal, "Boolean", Type.OPERATOR),
						new Signature("<=", realint, "Boolean", Type.OPERATOR),
						new Signature("CRML.realPeriodleq", realPeriod, params, "Boolean", Type.BLOCK),
						new Signature("CRML.Blocks.Logical4.leq", bool2, params, "Boolean", Type.BLOCK));
		
		built_in_operators.put("<=", leq_sigs);
		
		// >= operators
				List<Signature> geq_sigs = 
						List.of(new Signature(">=", int2,  "Boolean", Type.OPERATOR),
								new Signature(">=", real2, "Boolean", Type.OPERATOR),
								new Signature(">=", intreal, "Boolean", Type.OPERATOR),
								new Signature(">=", realint, "Boolean", Type.OPERATOR),
								new Signature("CRML.Blocks.Logical4.geq", bool2, params, "Boolean", Type.FUNCTION));
				
				built_in_operators.put(">=", geq_sigs);

		
		// and operators		
		built_in_operators.put("and", 
				List.of(new Signature("CRML.Blocks.Logical4.and4", bool2, params, "Boolean", Type.FUNCTION)));
		
		// not operators		
		built_in_operators.put("not", 
				List.of(new Signature("CRML.Blocks.Logical4.not4", bool1, params, "Boolean", Type.FUNCTION)));
		
		// end operators	TODO proper implementation	
				built_in_operators.put("end", 
						List.of(new Signature("CRML.endP", List.of("Period"), params, "Real", Type.BLOCK)));
				built_in_operators.put("start", 
						List.of(new Signature("CRML.startP", List.of("Period"), params, "Real", Type.BLOCK)));
		
		// filter operator
				built_in_operators.put("filter", 
						List.of(new Signature("CRML.filterC", List.of("Clock", "Boolean"), params, "Clock", Type.BLOCK)));
		
		// card operator
				built_in_operators.put("card", 
						List.of(new Signature("CRML.cardClock", List.of("Clock"), params, "Integer", Type.BLOCK)));
		
		// CONSTRUCTORS TODO finalize constructor table
				
		// String
		List<Signature> string_sigs = 
				List.of(new Signature("intToString", int1, params, "String", Type.FUNCTION),
						new Signature("realToString", real1, params, "String", Type.FUNCTION));
		
				built_in_operators.put("String", string_sigs);
				
	
				
		return built_in_operators;
	}
	
	public static Signature is_defined (HashMap<String, List<Signature>> operator_map, String op, String type) {
		
		List<Signature> sigs = operator_map.get(op);
		
		if(sigs==null)
			return null;
		
		for (Signature s:sigs) {
			if(s.variable_types.size()==1 && s.variable_types.get(0).equals(type))
				return s;
		}
		
		return null;
	}

	public static Signature is_defined(HashMap<String, List<Signature>> operator_map, String op, String type1,
			String type2) {
		List<Signature> sigs = operator_map.get(op);
		
		if(sigs==null)
			return null;
		
		for (Signature s:sigs) {
			if(s.variable_types.size()==2 && s.variable_types.get(0).equals(type1) && s.variable_types.get(1).equals(type2))
				return s;
		}
		
		return null;
	}

}
