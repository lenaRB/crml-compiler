/**
 * Define a grammar called Hello
 */
grammar crml;

import modelica;

@header {
    package crml;
}

model : 'model'  id // need to add package and library - clarify what is allowed where
		(def)* 
		'end' id  ';' EOF;	


def : LINE_COMMENT
	| 'external' (type id | structure_type user_type)';'
	| 'template' template_def ';'
	| 'class' type ('{' class_var_def+ '}' | ('extends' type id?) )';'
	| 'type' type_def ';'
	| 'set' id 'of' type 'is' exp ';'
	| 'operator' '[' type? ']' template_def ';'
	|  type id  (arg_list | 'is' exp )? ';'	
	;

	
template_def :  (id | USER_KEYWORD)+ '=' exp
;

operator_def :  ('\'' USER_KEYWORD+ '\'')? id  ( '\'' USER_KEYWORD+ '\'' id )* '=' exp ;
	 
type_def : user_type ('extends' type  arg_list? id?)?  '{' class_var_def * '}' ? 
	 ;
	 
arg_list : ('(' exp (',' exp)* ')');

crml_component_reference :
  '.'? id array_subscripts? ( '.' id array_subscripts? )*
  ;

type :   'integer' |'real' | 'boolean' | 'string' | 'clock' | 'set'
		| 'period' | 'events' | 'periods' | 'event' |  user_type;

structure_type : 'type' | 'class';

external_type : type | structure_type ;

class_var_def : (('parameter' | 'external' | 'fixed')? type id ('is' exp)? ';' )|'alias' user_type ';'| LINE_COMMENT 
| 'forbid' (binary_op| right_unary_op) (',' (binary_op| right_unary_op))* ';';

boolean_value : 'true' |'false' | 'undecided' | 'undefined' ;

exp :  boolean_value | id | STRING | UNSIGNED_NUMBER | '(' exp ')' 
	| exp binary_op exp | right_unary_op exp | exp left_unary_op | component_reference
	| 'sum' '(' exp (',' exp)+')' |'trim' exp 'on' exp
	| '{' (exp (',' exp)*)? '}' |  id 'proj' ('(' id ')')?  id | period_op 
	| user_function | 'element';

user_function : user_keyword+ exp (user_keyword+ exp)*;
	
period_op : ('['| ']') exp ',' exp ('['| ']') ; 
		
binary_op : 'and' | 'not' | '*' | '+' | '-' | '/' |'with' | 'master' | 'on' | 'filter'
				| '<=' | '<' | '>=' | '>' | 'par' | 'at' | '==' | '=' | 'or' ;	// take away or, fix user defined templates firsts
right_unary_op : 'pre' | 'not'| '-' | 'card' | 'and' ;
left_unary_op : 'start' | 'end';

id: VAR_ID;
user_keyword : USER_KEYWORD;
user_type : TYPE_NAME;

TYPE_NAME : (LOWCASE)( DIGIT | NONDIGIT )*;
VAR_ID : CAPS ( DIGIT | NONDIGIT )* | Q_IDENT;
USER_KEYWORD : LOWCASE+;
fragment CAPS :  'A' .. 'Z' ;
fragment LOWCASE :  'a' .. 'z' ;
