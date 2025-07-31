/**
 * Define a grammar for the CRML language
 */
grammar crml;


definition : definition_type id 'is' dependency* '{'
		(element_def)* 
		'}'  ';' EOF;	

dependency : (id |'flatten' '{' id (',' id)* '}') 'union' ;

definition_type : 'model' | 'package' | 'library'; // should we keep library?

element_def : comment | template | class_def | uninstantiated_def | type_def | operator | var_def | category;
	
class_def : 'class' id 'is' ('{' class_var_def+ '}' ('extends' type class_params? id? )?)';' ;

uninstantiated_def : static_qualifier (type id (',' id)* | structure_type id (',' id)* )';' ;

static_qualifier : 'parameter' ;

category : 'Category' id '=' '{' category_pair (',' category_pair)* '}' ';';

category_pair : '(' op ',' op ')';

//association : 'Category' empty_set c_set=id 'is' 'associate' c_name=id 'with' c_op_name=user_keyword ';';
 
var_def : var_qualifier? type id  (arg_list | 'is' (exp | is_external = 'external'))? ';' ;

operator : 'Operator' '[' type ']' operator_def ';' ;

template : 'Template' (id | user_keyword)+ '=' exp ';' ;

class_params : '(' (id '=' exp)+ ')';

operator_def :  (type id | user_keyword)+ '=' apply_category? exp ;

apply_category : 'apply' assoc=id 'on';
	 
type_def : 'type' id ('extends' type  arg_list? id?)?  ('{' class_var_def * '}' )? ;
	 
class_var_def : ( var_def )|'alias' id ';'| comment
			| 'forbid' (op| op) (',' (op| op))* ';' | uninstantiated_def ;

var_qualifier : 'fixed';
	 
arg_list : '(' exp (',' exp)* ')';

crml_component_reference : '.'? id array_subscripts? ( '.' id array_subscripts? )* ;

type :   (builtin_type | id ) isset=empty_set?;

builtin_type : 'Integer' |'Real' | 'Boolean' | 'String' | 'Clock' | 'Set' | 'Period' |'Periods'| 'Event' | 'Requirement';

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

tick : 'tick' id;
    
 exp : sub_exp | id | constant | constructorRule | sum |trim |  proj | period_op 
	 //| 'apply' cat=id 'on' '(' exp ')'
	 | right=exp runary=right_op 
	 | lunary=builtin_op left=exp 
	 | left=exp binary=builtin_op right=exp
 	 | uright=user_keyword right=exp 
	 | left=exp ubinary=user_keyword right=exp 
	 | left=exp uleft=user_keyword  
 	 | 'element' | 'terminate' | when_exp | exp 'at' at=exp 
 	 | integrate | tick |crml_component_reference | if_exp | set_def | 'evaluate' exp ;
 	 
if_exp : 'if' if_e=exp 'then' then_e=exp ('else' else_e=exp);

constructorRule : 'new' type exp;
	
period_op : lb=('['| ']') exp ',' exp rb=('['| ']') ; 

op : builtin_op|user_keyword
;

right_op : 'start' | 'end';
		
builtin_op : 'and' | '*' | '+' | '-' | '/' | 'with' | 'master' | 'on' | 'filter'
				| '<=' | '<' | '>=' | '>' | '<>' | 'par' | '==' |
				'pre' | 'not'| '-' | 'card' | 'or' | '^' |
				'mod' |
				'exp' | 'log' | 'log10' |
				'cos' |'acos' | 'sin' | 'asin'  ;

array_subscripts :
  '[' subscript ( ',' subscript )* ']'
  ;

subscript :
  ':' | exp
  ;

id: IDENT;
user_keyword : USER_KEYWORD;
comment : LINE_COMMENT;
number : UNSIGNED_NUMBER;
string : STRING;

IDENT : NONDIGIT ( DIGIT | NONDIGIT )* ;

USER_KEYWORD : '\'' (NONDIGIT|SYMBOL) (NONDIGIT|' '|SYMBOL|DIGIT)* '\'';

fragment CAPS :  'A' .. 'Z' ;
fragment LOWCASE :  'a' .. 'z' ;
fragment NONDIGIT : '_' | 'a' .. 'z' | 'A' .. 'Z' ;
fragment DIGIT : '0' .. '9' ;
fragment SYMBOL : '='|'>'|'<';

// Whitespace and comments

BOM : '\u00EF' '\u00BB' '\u00BF' ;

WS : ( ' ' | '\t' | NL )+ -> channel(HIDDEN)
  ;

LINE_COMMENT
    : '//' ( ~('\r'|'\n')* ) (NL|EOF) -> channel(HIDDEN)
    ;

ML_COMMENT
    :   '/*' (.)*? '*/' -> channel(HIDDEN)
    ;

fragment
NL: '\r\n' | '\n' | '\r';

// Lexical units except for keywords


STRING : '"' ( S_CHAR | S_ESCAPE )* '"' ;

fragment S_CHAR : NL | ~('\r' | '\n' | '\\' | '"'); // Unicode other than " and \

fragment Q_IDENT : '\'' ( Q_CHAR | S_ESCAPE ) ( Q_CHAR | S_ESCAPE | '"' )* '\'' ;

fragment Q_CHAR
   : NONDIGIT | DIGIT | '!' | '#' | '$' | '%' | '&' | '(' | ')' | '*'
   | '+' | ',' | '-' | '.' | '/' | ':' | ';' | '<' | '>' | '=' | '?'
   | '@' | '[' | ']' | '^' | '{' | '}' | '|' | '~' | ' '
   ;
fragment S_ESCAPE : '\\'
  ( '\'' | '"' | '?' | '\\' | 'a' | 'b' | 'f' | 'n' | 'r' | 't' | 'v')
  ;

fragment UNSIGNED_INTEGER : DIGIT+ ;
fragment EXPONENT : ( 'e' | 'E' ) ( '+' | '-' )? DIGIT+ ;

UNSIGNED_NUMBER : DIGIT+ ( '.' (DIGIT)* )? ( EXPONENT )? ;