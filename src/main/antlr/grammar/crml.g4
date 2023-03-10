/**
 * Define a grammar for the CRML language
 */
grammar crml;

import modelica;

definition : definition_type id 'is' '{'
		(element_def)* 
		'}'  ';' EOF;	

definition_type : 'model' | 'package' | 'library';

element_def : comment | template | class_def | uninstantiated_def | type_def | operator | var_def | category | association;
	
class_def : 'class' id 'is' ('{' class_var_def+ '}' ('extends' type class_params? id? )?)';' ;

uninstantiated_def : static_qualifier (type id (',' id)* | structure_type id (',' id)* )';' ;

static_qualifier : 'parameter' ;

category : 'Category' id 'is' '{' category_pair (',' category_pair)* '}' ';';

category_pair : '(' op ',' op ')';

association : 'Category' empty_set id 'is' 'associate' id 'with' id;
 
var_def : var_qualifier? type id  (arg_list | 'is' (exp | is_external = 'external'))? ';' ;

operator : 'Operator' '[' type ']' operator_def ';' ;

template : 'Template' (id | user_keyword)+ '=' exp ';' ;

class_params : '(' (id '=' exp)+ ')';

operator_def :  (type id | user_keyword)+ '=' exp ;
	 
type_def : 'type' id ('extends' type  arg_list? id?)?  ('{' class_var_def * '}' )? ;
	 
class_var_def : ( var_def )|'alias' id ';'| comment
			| 'forbid' (op| op) (',' (op| op))* ';' | uninstantiated_def ;

var_qualifier : 'fixed';
	 
arg_list : '(' exp (',' exp)* ')';

crml_component_reference : '.'? id array_subscripts? ( '.' id array_subscripts? )* ;

type :   (builtin_type | id ) isset=empty_set?;

builtin_type : 'Integer' |'Real' | 'Boolean' | 'String' | 'Clock' | 'Set' | 'Period' |'Periods'| 'Event';

structure_type : 'type' | 'class';

external_type : type | structure_type ;

boolean_value : 'true' |'false' | 'undecided' | 'undefined' ;

constant : boolean_value | string | number | time;

time : 'time';

set_def : '{' (exp (',' exp)*) '}' | empty_set;

empty_set : '{' '}';

sub_exp : '(' exp ')' ;

trim : 'trim' exp 'on' exp;

sum: 'sum' '(' exp (',' exp)+')' ;

proj : id 'proj' ('(' id ')')?  id ;

when_exp : 'when' when_e=exp 'then' then_e=exp;

integrate : 'integrate' exp 'on' exp;

tick : 'tick';
    
 exp : id | constant | sub_exp | constructor | sum |trim |  proj | period_op 
 	 | left=exp binary=op right=exp | right=exp runary=op | lunary=op left=exp  
 	 |  user_operator_call  | 'element' | 'terminate' | when_exp | exp 'at' at=exp 
 	 | integrate | tick |crml_component_reference | if_exp | set_def | 'evaluate' exp ;
 	 
if_exp : 'if' if_e=exp 'then' then_e=exp ('else' else_e=exp);

constructor : 'new' type exp?;

user_operator_call : (user_keyword exp)+; 
	
period_op : ('['| ']') exp ',' exp ('['| ']') ; 

op : builtin_op | user_keyword
;
		
builtin_op : 'and' | '*' | '+' | '-' | '/' | 'with' | 'master' | 'on' | 'filter'
				| '<=' | '<' | '>=' | '>' | '<>' | 'par' | '==' |
				'pre' | 'not'| '-' | 'card' | 'and' | 'or' | 
				'start' | 'end' | 'mod' |
				'exp' | 'log' | 'log10' |
				'cos' |'acos' | 'sin' | 'asin'  ;

id: IDENT;
user_keyword : USER_KEYWORD;
comment : LINE_COMMENT;
number : UNSIGNED_NUMBER;
string : STRING;

IDENT : NONDIGIT ( DIGIT | NONDIGIT )* ;

USER_KEYWORD : '\'' NONDIGIT (NONDIGIT|' ')* '\'';

fragment CAPS :  'A' .. 'Z' ;
fragment LOWCASE :  'a' .. 'z' ;
fragment NONDIGIT : '_' | 'a' .. 'z' | 'A' .. 'Z' ;
fragment DIGIT : '0' .. '9' ;

