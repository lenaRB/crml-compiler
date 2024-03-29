#	Syntax

## 4.1.	Notation

[ expr ] denotes an optional expression expr when the color of the square brackets is black.

{ expr } denotes an expression that is repeated one or more times when the color of the curly braces is black.

expr_1 | expr_2 | … | expr_n denotes n possible alternatives between the expressions expr_1 to expr_n. 

'c' denotes the character c.

```keyword``` denotes the String keyword.

Built-in keywords are written in ${\color{teal}blue}$.

User-defined objects names are written in ${\color{orange}orange}$.

Categories names are written in ${\color{red}red}$.



## 4.2 Keywords 

### 4.2.1 Types


|Keyword	| Semantics	        | Comments |
| ----------- | ----------- |----------- |
|${\color{teal}Boolean}$	| $\mathbb{B}$      |4-valued Booleans |
|${\color{teal} \mathcal{C}}$	| $\mathcal{C} (\mathbb{O}_1 \rightarrow \mathbb{O}_2)$      |Categories |
| ${\color{teal}class}$ | $\mathcal{C}$ |Class definitions |
| ${\color{teal}Clock}$ | $2^\mathcal{E}$ or $\mathcal{D}$ |Clocks |
| ${\color{teal}Event}$ | $\mathcal{E}$ |Events |
| ${\color{teal}Integer}$ | $\mathbb{Z}$ |Positive and negative integers |
| ${\color{teal}library}$ | $\mathcal{C}$ |Libraries|
| ${\color{teal}model}$ | M |Models |
| ${\color{teal}Operator}$ | $\mathcal{O} (\mathbb{D}_1 \rightarrow \mathbb{D}_2)$ |Operators. The names of the domains D_1 and D_2 are given in the declaration of the operator. |
| ${\color{teal}package}$ | T |Packages |
| ${\color{teal}Period}$ | P |Single time periods |
| ${\color{teal}Periods}$ | 2^P |Multiple time periods |
| ${\color{teal}Probability}$ | $\mathcal{O} (\mathbb{B}_2 \rightarrow \mathbb{R})$ |Probabilities |
| ${\color{teal}Real}$ | R |Real numbers |
| ${\color{teal}String}$ | S |Strings |
| ${\color{teal}Template}$ | $\mathcal{O} (\mathbb{B}^n \rightarrow \mathbb{B})$ |Templates |
| ${\color{teal}type}$ | T |Type definitions |

### 4.2.2 Special Values


|Keyword	| Semantics	        | Comments |
| ----------- | ----------- |----------- |
| ${\color{teal}false}$ | false | |
| ${\color{teal}true}$ | true | |
| ${\color{teal}undecided}$  | undecided  | |
| ${\color{teal}undefined}$ | undefined | |

### 4.2.2 Special Characters

|Keyword	| Semantics	        | Comments |
| ----------- | ----------- |----------- |
| ) | ( | |
| ( | ) | |
| { | {  | |
| } | } | |

### 4.2.4 Operators

| Operators | Comments/Support status |
| ----------- | ----------- |
| = |:white_check_mark: |
| + |:white_check_mark: |
| - |:white_check_mark: |
| * |:white_check_mark: |
| / |:white_check_mark: |
| < |:white_check_mark: |
| <= |:white_check_mark: |
| > |:white_check_mark: |
| >= |:white_check_mark: |
| == |:white_check_mark: |
| <> |:white_check_mark: |
| ^ |:white_check_mark: |
| acos |:white_check_mark: |
| alias |:x: |
| and |:white_check_mark: |
| asin |:white_check_mark: |
| associate |:x: |
| at |:x: |
| card |:x: |
| constant |:white_check_mark: |
| cos |:white_check_mark: |
| duration |:x: |
| element |:x: |
| else |:white_check_mark: |
| end |:white_check_mark: |
| estimator |:x: |
| exp |:white_check_mark: |
| extends |:x: |
| external |:white_check_mark: |
| filter |:x: |
| flatten |:x: |
| forbid |:x: |
| if |:white_check_mark: |
| integrate |:x: |
| is |:white_check_mark: |
| log |:white_check_mark: |
| log10 |:white_check_mark: |
| new |:white_check_mark: |
| not |:white_check_mark: |
| on |:x: |
| or |:white_check_mark: |
| parameter |:white_check_mark: |
| partial |:x: |
| proj |:x: |
| redeclare |:x: |
| sin |:white_check_mark: |
| start |:white_check_mark: |
| then |:white_check_mark: |
| tick |:white_check_mark: |
| time from |:x: |
| union |:x: |
| variance |:x: |
| while |:x: |
| with |:x: |


## 4.3 Expressions
The CRML expression for the declaration and/or definition of any CRML element is of the form:

|Natural language syntax	| Mathematical syntax	        | Semantics | Reference |
| ----------- | ----------- |----------- |----------- |
|` [ [ type ] ident is ] [ value \| external ] [; \| ,] `	|   ` [ [ type ] ident = ] [ value \| external ] [; \| ,] `  | `type:ident=value ` |  |



The semicolon (;) can be replaced by the comma (,), and is only mandatory when two or more expressions must be separated in sets or operator calls.

`type ident` is the declaration of the element of `type` type and name `ident`.

`type` is the type of the expression, to be chosen among ${\color{teal}Real}$, ${\color{teal}Integer}$, ${\color{teal}String}$, ${\color{teal}Boolean}$, ${\color{teal}Event}$, etc., or user-defined types.

`ident` is the identifier of the expression which is unique within its scope (or namespace). An identifier is a character string composed of a non-digit optionally followed by digits or non-digits:

```
ident: non-digit [{digit | non-digit}]

non-digit: '_' | characters 'a' to 'z' | characters 'A' to 'Z' 

digit: characters '0' to '9'
```

The identifier, and therefore the type, are not explicitly written when the expression is an argument in the call of an operator: the type and the identifier are automatically inferred by the argument binding mechanism from the position of the argument in the function call, and the alias of the argument type if any. 
The identifier is omitted for anonymous sets.
There is a special syntax for the declaration of an operator in the natural language syntax, cf. Section 4.13.
The type is not explicitly written when the expression is an argument in the constructor of an object. It is automatically inferred from its identifier and from the object’s class definition.

value is the definition of the element. It denotes the value of the expression, which depends on the type of the element. It is expressed by an expression using a constructor or an operator that take expressions as arguments and return a value of the element type. Expressions are thus recursively defined until they involve constructors with no arguments or external expressions:

```
expr: [[type] ident is] [value | external]
value: ([new] constructor [{expr}]) | (operator {expr}) 
```

The value of the expression is always explicit: it cannot be obtained by solving an equation. The keyword external stands for the value when the element is external.
If the name of the constructor is the same as the name of a user-defined class, then the keyword new must be used to create an instance of the class.

There are two kinds of CRML elements: sets and set elements. Sets contain set elements. A set can be a set element of another set.

A set can depend on time, depending on its type, which means that the set elements can be added or removed dynamically. Dynamic sets are of the type ${\color{teal}Clock}$ or ${\color{teal}Periods}$.

A set can be empty.

There are three kinds of sets: typed sets, special sets, and the universal set. In a typed set, all elements are of the same type. In a special set, elements can be of different types. The special sets are of the type ${\color{teal}type}$, ${\color{teal}class}$, ${\color{teal}model}$, ${\color{teal}library}$ or ${\color{teal}package}$. The universal set is the only set that has no expression: it has no identifier and is implicitly defined as being the set that contains all sets except itself.

The scope of an expression is the set where it belongs.

The implicit type of the universal set (the set that contains all sets) is package, because package is the only set that can contain (directly or indirectly) all sets of the language.

An expression refers to another expression outside of its scope by appending the relative path of the outside expression to the identifier of the outside expression (absolute path is not possible because the universal set has no identifier).

## 4.4	Comments

Comments are identical to C++ (or Modelica).

There are two kinds of comments, single-line comment and multiline comments.

```
// This is a single-line comment
```

The characters from ```//``` until the end of the line are ignored.

```
/* This is a 
multiline comment */ 
```
The characters enclosed between ```/*``` and ```*/``` are ignored, including return carriages. Multiline comments cannot be nested.
Expressions in comments are not part of the CRML language.

## 4.5	Type Real
### 4.5.1	Constructors

https://github.com/lenaRB/crml-compiler/blob/a4ab9f7dcc78ca5ae964feeaeef5ca7414cb5d5e/src/test/resources/testFiles/spec-doc-examples/RealConstructorsExample1.crml#L1-L7

Example 2: incorrect expressions

```
Real x is .7; // No digit before the decimal point
Real x is -28.775E +3; // Space after the decimal exponent
Real x is -28.775 E+3; // Space before the decimal exponent
Real x is -28.775E+ 3; // Space after the + sign
Real x is E+3; // No digit before the decimal exponent
Real x is 1.E+3.14; // Decimal point in the decimal exponent
```

A decimal value is defined as 

```
decimal_value: [sign] [{' '}] {digit} ['.'] [{digit}] [exponent]
sign: '+' | '-'
exponent: ('E' | 'e') [sign] {digit}
digit: characters '0' to '9'
```

where:
•	```'+' | '-'```  denotes the + or the - sign,
•	```{' '}``` denotes one or more spaces,
•	```{digit}``` denotes one or more digits,
•	```'.'``` is the decimal point,
•	```'E'``` is the decimal exponent: 1En = 10n where n is a positive or negative integer,
•	```'e'``` can be used instead of ```'E'```.

### 4.5.2 Operators

|Name|Natural language syntax|Mathematical syntax |	 Semantics|Reference|
|--|--|--|--|--|
|Binary addition|```Real x1, x2; Real x is x1 + x2;```|--|--|--|--|
|--|--|--|--|--|--|
|--|--|--|--|--|--|
|--|--|--|--|--|--|

The expression 

``` x2 is x1 at c;```

takes the value of ```x1``` at every tick of clock c. The value of ```x2``` between two ticks ```t1``` and ```t2``` is equal to the value of ```x1``` at tick ```t1```.

Example 1: verifying that ```x1``` is greater than ```x2``` when y becomes positive.

https://github.com/lenaRB/crml-compiler/blob/a4ab9f7dcc78ca5ae964feeaeef5ca7414cb5d5e/src/test/resources/testFiles/spec-doc-examples/RealConstructorsExample1.crml#L1-L7

It is also possible to write:

``` Boolean b is (x1 at c) > (x2 at c); ```




```mermaid
classDiagram
    Cold source "1" o-- "n" Heat exchanger
    Cooling System "1" --o "n" Heat exchanger
    Cooling System "1" --o "n" Pump
    Cooling System "1" --o "n" Served System
    
```
