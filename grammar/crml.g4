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
	| 'Template' 
	| 'Class' IDENT ('{' class_var_def+ '}' | ('extends' IDENT) )';'
	| type IDENT '(' exp (',' exp)* ')' ';'	
	| type IDENT ('is' exp )?';'
	| 'Set' IDENT 'of' type 'is' exp ';'
	
	 ;

type :   'Integer' |'Real' | 'Boolean' | 'Requirement' |   'Requirements' | 'Clock' | 'Category' 
		| 'Period' | 'Events' | 'Periods' | 'Event' | 'Class' | IDENT;
		

class_var_def : (('parameter' | 'external')? type IDENT ';' | LINE_COMMENT );


exp :  'true' |'false' | 'undecided' | 'undefined' | IDENT | STRING | UNSIGNED_NUMBER | '(' exp ')' 
	| exp binary_op exp | right_unary_op exp | exp left_unary_op | component_reference
	| 'sum' '(' exp (',' exp)+')' |'trim' exp 'on' exp
	| '{' (exp (',' exp)*)? '}' |  IDENT 'proj' ('(' IDENT ')')?  IDENT | period_op ;
	
period_op : ('['| ']') exp ',' exp ('['| ']') ; 
		
binary_op : 'and' | 'not' | 'or' | '*' | '+' | '-' | 'with' | 'master' | 'on' |
				| '<=' | '<' | '>=' | '>' | 'par' | 'at' | '==' | '=';	
right_unary_op : 'pre' | 'not'| '-' | 'card';
left_unary_op : 'start' | 'end';

