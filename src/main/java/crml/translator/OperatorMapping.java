package crml.translator;

import java.util.HashMap;
import java.util.List;

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
		
		
		// Default operand names in built-in functions
		List<String> params = List.of("r1", "r2");
		
		
		// + operators
		List<Signature> plus_sigs = 
				List.of(new Signature("+", int2, "Integer", true),
						new Signature("", int1, "Integer", true),
						new Signature("+", real2, "Real", true),
						new Signature("", real1, "Real", true),
						new Signature("CRML.ETL.Evaluator.TemporalOperators.add4", bool2, params, "Boolean", false));
		
		
		
		built_in_operators.put("+", plus_sigs);
		
		// - operators
				List<Signature> minus_sigs = 
						List.of(new Signature("-", int2, "Integer", true),
								new Signature("-", int1, "Integer", true),
								new Signature("-", real1, "Real", true),
								new Signature("-", real2, "Real", true),
								new Signature("CRML.ETL.Evaluator.TemporalOperators.diff4", bool2, params, "Boolean", false));
						
		built_in_operators.put("-", minus_sigs);
		
		// * operators
		List<Signature> mult_sigs = 
				List.of(new Signature("*", int2, "Integer", true),
						new Signature("*", real2, "Real", true),
						new Signature("CRML.ETL.Evaluator.TemporalOperators.mul2x4", bool2, params, "Boolean", false));
				
		built_in_operators.put("*", mult_sigs);
		
		// / operators
				List<Signature> div_sigs = 
						List.of(new Signature("/", int2, "Integer", true),
								new Signature("/", real2, "Real", true));
						
				built_in_operators.put("/", div_sigs);

		// <= operators
		List<Signature> leq_sigs = 
				List.of(new Signature("<=", int2,  "Boolean", true),
						new Signature("<=", real2, "Boolean", true),
						new Signature("<=", intreal, "Boolean", true),
						new Signature("<=", realint, "Boolean", true),
						new Signature("CRML.Blocks.Logical4.leq", bool2, params, "Boolean", false));
		
		built_in_operators.put("<=", leq_sigs);
		
		// >= operators
				List<Signature> geq_sigs = 
						List.of(new Signature(">=", int2,  "Boolean", true),
								new Signature(">=", real2, "Boolean", true),
								new Signature(">=", intreal, "Boolean", true),
								new Signature(">=", realint, "Boolean", true),
								new Signature("CRML.Blocks.Logical4.geq", bool2, params, "Boolean", false));
				
				built_in_operators.put(">=", geq_sigs);

		
		// and operators		
		built_in_operators.put("and", 
				List.of(new Signature("CRML.Blocks.Logical4.and4", bool2, params, "Boolean", false)));
		
		// not operators		
		built_in_operators.put("not", 
				List.of(new Signature("CRML.Blocks.Logical4.not4", bool1, params, "Boolean", false)));
		
		// end operators	TODO proper implementation	
				built_in_operators.put("end", 
						List.of(new Signature("CRML.end", List.of("Period"), params, "Boolean", false)));
				
		
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
