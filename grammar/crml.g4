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
	| type IDENT 'is' exp ';'
	
	 ;

definition : type IDENT ':=' exp
			| 'Period' '[' exp ':' exp']'
			| 'Operator' '[' type ']' (IDENT 'Requirement' exp)+
			| 'Template' '[' type ']' (IDENT 'Requirement' exp)+
			| 'associate' exp 'with' IDENT;

type :  'Requirement' | 'Real' | 'Boolean' | 'Clock' | 'Integer' | 'Category' 
		| 'Period' | 'Events' | 'Periods' | 'Event' | 'Class';

exp :  'true' |'false' | 'undecided' | 'undefined' | IDENT | STRING |
	IDENT binary_op IDENT | right_unary_op IDENT | IDENT left_unary_op | 'sum' '(' exp (',' exp)+')' |'trim' exp 'on' exp
	| '{' exp (',' exp)+ '}'; 
		
binary_op : 'and' | 'not' | 'or' | '*' | '+' | '-' | 'proj' | 'with' | 'master' | 'on' |
				| '<=' | '<' | '>=' | '>';	
right_unary_op : 'pre' | 'not'| '-' | 'card';
left_unary_op : 'start' | 'end';

