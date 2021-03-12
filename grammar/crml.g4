/**
 * Define a grammar called Hello
 */
grammar crml;

import modelica;

@header {
    package crml;
}

model : 'Property' 'model'  id
		(def)* 
		'end' id  ';' EOF;

def : LINE_COMMENT
	| 'external' type id ';'
	| 'Template' template_def ';'
	| 'Class' id ('{' class_var_def+ '}' | ('extends' id) )';'
	| 'Type' type_def ';'	// type vs class?
	| type id  arg_list ';'	
	| type id ('is' exp )?';'
	| 'Set' id 'of' type 'is' exp ';'
	;

id: IDENT;
	
template_def :  (binary_op? id)+ '=' exp
;

//VAR_NAME : CAPS (CAPS|DIGIT)*;
//KEYWORD_NAME : LOWCASE+; 
//fragment CAPS :  'A' .. 'Z' ;
//fragment LOWCASE :  'a' .. 'z' ;
	 
type_def : id ('extends' id)?  arg_list? '{' class_var_def * '}' ? 
	 ;
	 
arg_list : ('(' exp (',' exp)* ')');

type :   'Integer' |'Real' | 'Boolean' | 'Requirement' |   'Requirements' | 'Clock' | 'Category' 
		| 'Period' | 'Events' | 'Periods' | 'Event' | 'Class' | 'Type' | id;
		

class_var_def : (('parameter' | 'external' | 'fixed')? type id ('is' exp)? ';' )|'alias' id ';'| LINE_COMMENT ;


exp :  'true' |'false' | 'undecided' | 'undefined' | id | STRING | UNSIGNED_NUMBER | '(' exp ')' 
	| exp binary_op exp | right_unary_op exp | exp left_unary_op | component_reference
	| 'sum' '(' exp (',' exp)+')' |'trim' exp 'on' exp
	| '{' (exp (',' exp)*)? '}' |  id 'proj' ('(' id ')')?  id | period_op ;
	
period_op : ('['| ']') exp ',' exp ('['| ']') ; 
		
binary_op : 'and' | 'not' | 'or' | '*' | '+' | '-' | 'with' | 'master' | 'on' |
				| '<=' | '<' | '>=' | '>' | 'par' | 'at' | '==' | '=';	
right_unary_op : 'pre' | 'not'| '-' | 'card';
left_unary_op : 'start' | 'end';

