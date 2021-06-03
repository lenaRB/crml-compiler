/**
 * Define a grammar called Hello
 */
grammar crml;

import modelica;

@header {
    package crml;
}

definition : ('model' | 'package' | 'library') id // need to add package and library - clarify what is allowed where
		(element_def)* 
		'end' id  ';' EOF;	


element_def : LINE_COMMENT
	| 'external' (type id | structure_type id)';'
	| 'Template' template_def ';'
	| 'class' id ('{' class_var_def+ '}' | 'extends' type class_params? id? )';'
	| 'type' type_def ';'
	| 'Set' id 'of' type 'is' (set_body | exp binary_op exp) ';'
	| 'Operator' '[' type ']' operator_def ';'
	|  type id  (arg_list | 'is' (exp | set_body))? ';'
	;

class_params : '(' (id '=' exp)+ ')';
	
template_def :  (id | USER_KEYWORD)+ '=' exp;

operator_def :  (type id | USER_KEYWORD)+ '=' exp ;
	 
type_def : id ('extends' type  arg_list? id?)?  ('{' class_var_def * '}' )? 
	 ;
	 
arg_list : ('(' exp (',' exp)* ')');

crml_component_reference :
  '.'? id array_subscripts? ( '.' id array_subscripts? )*
  ;

type :   'Integer' |'Real' | 'Boolean' | 'String' | 'Clock' | 'Set'
		| 'Period' | 'Events' | 'Periods' | 'Event' |  id;

structure_type : 'type' | 'class';

external_type : type | structure_type ;

class_var_def : (('parameter' | 'external' | 'fixed')? type id ('is' exp)? ';' )|'alias' id ';'| LINE_COMMENT 
| 'forbid' (binary_op| right_unary_op) (',' (binary_op| right_unary_op))* ';';

boolean_value : 'true' |'false' | 'undecided' | 'undefined' ;

constant : boolean_value | STRING | UNSIGNED_NUMBER;

set_body : '{' (exp (',' exp)*)? '}';

exp :  id | constant | '(' exp ')' 
	| exp binary_op exp | right_unary_op exp | exp left_unary_op | component_reference
	| 'sum' '(' exp (',' exp)+')' |'trim' exp 'on' exp
	|  id 'proj' ('(' id ')')?  id | period_op
    | 'element' | user_operator_call | 'terminate' | 'when' exp 'then' exp;

user_operator_call : user_keyword+ exp (user_keyword+ exp)* user_keyword*;
	
period_op : ('['| ']') exp ',' exp ('['| ']') ; 
		
binary_op : 'and' | 'not' | '*' | '+' | '-' | '/' |'with' | 'master' | 'on' | 'filter'
				| '<=' | '<' | '>=' | '>' | 'par' | 'at' | '==' | '=' | 'or' | user_keyword ;	// take away or, fix user defined templates firsts

right_unary_op : 'pre' | 'not'| '-' | 'card' | 'and' | 'evaluate';

left_unary_op : 'start' | 'end';

id: IDENT;
user_keyword : USER_KEYWORD;

USER_KEYWORD : '_' NONDIGIT+;
fragment CAPS :  'A' .. 'Z' ;
fragment LOWCASE :  'a' .. 'z' ;
