/**
 * Define a grammar called Hello
 */
grammar crml;

import modelica;

@header {
    package crml;
}

model : 'Property' 'model'  IDENT 
		(def)* 
		'end' IDENT  ';' EOF;

def : LINE_COMMENT
	| 'external' type IDENT ';'
	| 'Template' template_def
	| 'Class' IDENT ('{' class_var_def+ '}' | ('extends' IDENT) )';'
	| 'Type' type_def ';'	// type vs class?
	| type IDENT  arg_list ';'	
	| type IDENT ('is' exp )?';'
	| 'Set' IDENT 'of' type 'is' exp ';'
	
	;
	
template_def :  (var_name | keyword_name)+ '='
;

var_name : CAPS (CAPS|DIGIT)*
;

keyword_name : LOWCASE+;
	 
fragment CAPS :  'A' .. 'Z' ;
fragment LOWCASE :  'a' .. 'z' ;
	 
type_def : IDENT ('extends' IDENT)?  arg_list? '{' class_var_def * '}' ? 
	 ;
	 
arg_list : ('(' exp (',' exp)* ')');

type :   'Integer' |'Real' | 'Boolean' | 'Requirement' |   'Requirements' | 'Clock' | 'Category' 
		| 'Period' | 'Events' | 'Periods' | 'Event' | 'Class' | 'Type' | IDENT;
		

class_var_def : (('parameter' | 'external' | 'fixed')? type IDENT ('is' exp)? ';' )|'alias' IDENT ';'| LINE_COMMENT ;


exp :  'true' |'false' | 'undecided' | 'undefined' | IDENT | STRING | UNSIGNED_NUMBER | '(' exp ')' 
	| exp binary_op exp | right_unary_op exp | exp left_unary_op | component_reference
	| 'sum' '(' exp (',' exp)+')' |'trim' exp 'on' exp
	| '{' (exp (',' exp)*)? '}' |  IDENT 'proj' ('(' IDENT ')')?  IDENT | period_op ;
	
period_op : ('['| ']') exp ',' exp ('['| ']') ; 
		
binary_op : 'and' | 'not' | 'or' | '*' | '+' | '-' | 'with' | 'master' | 'on' |
				| '<=' | '<' | '>=' | '>' | 'par' | 'at' | '==' | '=';	
right_unary_op : 'pre' | 'not'| '-' | 'card';
left_unary_op : 'start' | 'end';

