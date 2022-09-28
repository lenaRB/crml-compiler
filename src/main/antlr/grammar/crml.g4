/**
 * Define a grammar for the CRML language
 */
grammar crml;

import modelica;

definition : definition_type id 'is' '{'
		(element_def)* 
		'}'  ';' EOF;	

definition_type : 'model' | 'package' | 'library'; // clarify what is allowed where

element_def : comment | template | class_def | uninstantiated_def | type_def | set_def | operator | var_def | category;
	
class_def : 'class' id 'is' ('{' class_var_def+ '}' ('extends' type class_params? id? )?)';' ;

set_def : 'Set' id 'of' type 'is' (set_body | exp op exp) ';';

uninstantiated_def : static_qualifier (type id (',' id)* | structure_type id (',' id)* )';' ;

static_qualifier : 'parameter' | 'external' ;

category : 'Category' id 'is' '{' category_pair (',' category_pair)* '}' ';';

category_pair : '(' op ',' op ')';
 
var_def : var_qualifier? type id  (arg_list | 'is' (exp | set_body ))? ';' ;

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

type :   (builtin_type | id ) empty_set?;

builtin_type : 'Integer' |'Real' | 'Boolean' | 'String' | 'Clock' | 'Set' | 'Period' ;

structure_type : 'type' | 'class';

external_type : type | structure_type ;

boolean_value : 'true' |'false' | 'undecided' | 'undefined' ;

constant : boolean_value | string | number;

set_body : '{' (exp (',' exp)*) '}' | empty_set;

empty_set : '{' '}';

sub_exp : '(' exp ')' ;

trim : 'trim' exp 'on' exp;

sum: 'sum' '(' exp (',' exp)+')' ;

proj : id 'proj' ('(' id ')')?  id ;

when_exp : 'when' when_e=exp 'then' then_e=exp;

integrate : 'integrate' exp 'on' exp;

tick : 'tick';
    
 exp : id | constant | sub_exp | clock_constructor | sum |trim |  proj | period_op 
 	 | left=exp binary=op right=exp | right=exp runary=op | lunary=op left=exp  
 	 |  user_operator_call  | 'element' | 'terminate' | when_exp
 	 | 'new' constructor=id | exp 'at' at=exp | integrate | tick |crml_component_reference | if_exp ;
 	 
if_exp : 'if' if_e=exp 'then' then_e=exp ('else' else_e=exp);
    
clock_constructor : 'Clock' id ;

user_operator_call : (user_keyword exp)+; 
	
period_op : ('['| ']') exp ',' exp ('['| ']') ; 

op : builtin_op | user_keyword
;
		
builtin_op : 'and' | '*' | '+' | '-' | '/' | 'with' | 'master' | 'on' | 'filter'
				| '<=' | '<' | '>=' | '>' | '<>' | 'par' | '==' |
				'pre' | 'not'| '-' | 'card' | 'and' | 'evaluate' |
				'start' | 'end' ;

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

