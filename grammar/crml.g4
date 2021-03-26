/**
 * Define a grammar called Hello
 */
grammar crml;

import modelica;

@header {
    package crml;
}

model : 'model'  id // need to add package and library
		(def)* 
		'end' id  ';' EOF;	

def : LINE_COMMENT
	| 'external' type id ';'
	| 'Template' template_def ';'
	| 'Class' id ('{' class_var_def+ '}' | ('extends' type id?) )';'
	| 'Type' type_def ';'
	| type id  arg_list ';'	
	| type id ('is' exp )?';'
	| 'Set' id 'of' type 'is' exp ';'
	| 'Operator' '[' type ']' template_def ';'
	;

id: VAR_ID;
user_keyword : USER_KEYWORD;
user_type : TYPE_NAME;

TYPE_NAME : '_'(NONDIGIT)( DIGIT | NONDIGIT )*;
VAR_ID : CAPS ( DIGIT | NONDIGIT )* | Q_IDENT;
USER_KEYWORD : LOWCASE+;

	
template_def :  (type id | USER_KEYWORD)+ '=' exp
;

fragment CAPS :  'A' .. 'Z' ;
fragment LOWCASE :  'a' .. 'z' ;
	 
type_def : user_type ('extends' type  arg_list? id?)?  '{' class_var_def * '}' ? 
	 ;
	 
arg_list : ('(' exp (',' exp)* ')');

crml_component_reference :
  '.'? id array_subscripts? ( '.' id array_subscripts? )*
  ;

type :   'Integer' |'Real' | 'Boolean' | 'String' | 'Requirement' |   'Requirements' | 'Clock' | 'Category' 
		| 'Period' | 'Events' | 'Periods' | 'Event' | 'Class' | 'Type' | 'Operator' | user_type;
		

class_var_def : (('parameter' | 'external' | 'fixed')? type id ('is' exp)? ';' )|'alias' id ';'| LINE_COMMENT 
| 'forbid' (binary_op| right_unary_op) (',' (binary_op| right_unary_op))* ';';

boolean_value : 'true' |'false' | 'undecided' | 'undefined' ;

exp :  boolean_value | id | STRING | UNSIGNED_NUMBER | '(' exp ')' 
	| exp binary_op exp | right_unary_op exp | exp left_unary_op | component_reference
	| 'sum' '(' exp (',' exp)+')' |'trim' exp 'on' exp
	| '{' (exp (',' exp)*)? '}' |  id 'proj' ('(' id ')')?  id | period_op ;
	
period_op : ('['| ']') exp ',' exp ('['| ']') ; 
		
binary_op : 'and' | 'not' | 'or' | '*' | '+' | '-' | '/' |'with' | 'master' | 'on' |
				| '<=' | '<' | '>=' | '>' | 'par' | 'at' | '==' | '=';	
right_unary_op : 'pre' | 'not'| '-' | 'card' | 'and';
left_unary_op : 'start' | 'end';

