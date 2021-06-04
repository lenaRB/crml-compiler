/**
 * Define a grammar for the CRML language
 */
grammar crml;

import modelica;

@header {
    package crml;
}

definition : definition_type id 
		(element_def)* 
		'end' id  ';' EOF;	

definition_type : 'model' | 'package' | 'library'; // clarify what is allowed where

element_def : comment| external_def	| template | class_def | type_def | set_def | operator | var_def;
	
class_def : 'class' id ('{' class_var_def+ '}' | 'extends' type class_params? id? )';' ;

set_def : 'Set' id 'of' type 'is' (set_body | exp binary_op exp) ';';

external_def : 'external' (type id | structure_type id)';' ;

var_def : type id  (arg_list | 'is' (exp | set_body))? ';' ;

operator : 'Operator' '[' type ']' operator_def ';' ;

template : 'Template' (id | user_keyword)+ '=' exp ';' ;

class_params : '(' (id '=' exp)+ ')';

operator_def :  (type id | user_keyword)+ '=' exp ;
	 
type_def : 'type' id ('extends' type  arg_list? id?)?  ('{' class_var_def * '}' )? ;
	 
class_var_def : (class_qualifier? type id ('is' exp)? ';' )|'alias' id ';'| comment
			| 'forbid' (binary_op| right_unary_op) (',' (binary_op| right_unary_op))* ';';

class_qualifier : 'parameter' | 'external' | 'fixed';
	 
arg_list : ('(' exp (',' exp)* ')');

crml_component_reference : '.'? id array_subscripts? ( '.' id array_subscripts? )*
  ;

type :   'Integer' |'Real' | 'Boolean' | 'String' | 'Clock' | 'Set'
		| 'Period' | 'Events' | 'Periods' | 'Event' |  id;

structure_type : 'type' | 'class';

external_type : type | structure_type ;

boolean_value : 'true' |'false' | 'undecided' | 'undefined' ;

constant : boolean_value | string | number;

set_body : '{' (exp (',' exp)*)? '}';

sub_exp : '(' exp ')' ;

trim : 'trim' exp 'on' exp;

sum: 'sum' '(' exp (',' exp)+')' ;

proj : id 'proj' ('(' id ')')?  id ;

when : 'when' exp 'then' exp;

exp :  id | constant | sub_exp
	| exp binary_op exp | right_unary_op exp | exp left_unary_op | component_reference
	| sum |trim |  proj | period_op
    | 'element' | user_operator_call | 'terminate' | when;

user_operator_call : user_keyword+ exp (user_keyword+ exp)* user_keyword*;
	
period_op : ('['| ']') exp ',' exp ('['| ']') ; 
		
binary_op : 'and' | 'not' | '*' | '+' | '-' | '/' |'with' | 'master' | 'on' | 'filter'
				| '<=' | '<' | '>=' | '>' | 'par' | 'at' | '==' | '=' | 'or' | user_keyword ;	// take away or, fix user defined templates firsts

right_unary_op : 'pre' | 'not'| '-' | 'card' | 'and' | 'evaluate';

left_unary_op : 'start' | 'end';

id: IDENT;
user_keyword : USER_KEYWORD;
comment : LINE_COMMENT;
number : UNSIGNED_NUMBER;
string : STRING;

USER_KEYWORD : '_' NONDIGIT+;
fragment CAPS :  'A' .. 'Z' ;
fragment LOWCASE :  'a' .. 'z' ;
