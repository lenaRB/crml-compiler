#	Syntax

## 4.1.	Notation

[ expr ] denotes an optional expression expr when the color of the square brackets is black.

{ expr } denotes an expression that is repeated one or more times when the color of the curly braces is black.

expr_1 | expr_2 | … | expr_n denotes n possible alternatives between the expressions expr_1 to expr_n. 

'c' denotes the character c.

"keyword" denotes the String keyword.

Built-in keywords are written in ${\color{blue}blue}$, ${\color{cyan}cyan}$, ${\color{teal}teal}$.

User-defined objects names are written in ${\color{orange}orange}$.

Categories names are written in ${\color{red}red}$.



## 4.2 Keywords 


|Keyword	| Semantics	        | Comments |
| ----------- | ----------- |----------- |
|Boolean	| $\mathbb{B}$      |4-valued Booleans |
|Category	| $\mathcal{C} (\mathbb{O}_1 \rightarrow \mathbb{O}_2)$      |Categories |
| class | $\mathcal{C}$ |Class definitions |
| Clock | $2^\mathcal{E}$ or $\mathcal{D}$ |Clocks |
| Event | $\mathcal{E}$ |Events |
| Integer | $\mathbb{Z}$ |Positive and negative integers |
| library | $\mathcal{C}$ |Libraries|
| model | M |Models |
| Operator | $\mathcal{O} (\mathbb{D}_1 \rightarrow \mathbb{D}_2)$ |Operators. The names of the domains D_1 and D_2 are given in the declaration of the operator. |
| package | T |Packages |
| Period | P |Single time periods |
| Periods | 2^P |Multiple time periods |
| Probability | $\mathcal{O} (\mathbb{B}_2 \rightarrow \mathbb{R})$ |Probabilities |
| Real | R |Real numbers |
| String | S |Strings |
| Template | $\mathcal{O} (\mathbb{B}^n \rightarrow \mathbb{B})$ |Templates |
| type| T |Type definitions |

## 4.3 Expressions
The CRML expression for the declaration and/or definition of any CRML element is of the form:

|Natural language syntax	| Mathematical syntax	        | Semantics | Reference |
| ----------- | ----------- |----------- |----------- |
|` [ [ type ] ident is ] [ value \| external ] [; \| ,] `	|   ` [ [ type ] ident = ] [ value \| external ] [; \| ,] `  | `type:ident=value ` |  |



The semicolon (;) can be replaced by the comma (,), and is only mandatory when two or more expressions must be separated in sets or operator calls.

`type ident` is the declaration of the element of `type` type and name `ident`.

`type` is the type of the expression, to be chosen among ${\color{blue}Real}$, ${\color{blue}Integer}$, ${\color{blue}String}$, ${\color{blue}Boolean}$, ${\color{blue}Event}$, etc., or user-defined types.

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

A set can depend on time, depending on its type, which means that the set elements can be added or removed dynamically. Dynamic sets are of the type Clock or Periods.

A set can be empty.

There are three kinds of sets: typed sets, special sets, and the universal set. In a typed set, all elements are of the same type. In a special set, elements can be of different types. The special sets are of the type type, class, model, library or package. The universal set is the only set that has no expression: it has no identifier and is implicitly defined as being the set that contains all sets except itself.

The scope of an expression is the set where it belongs.

The implicit type of the universal set (the set that contains all sets) is package, because package is the only set that can contain (directly or indirectly) all sets of the language.

An expression refers to another expression outside of its scope by appending the relative path of the outside expression to the identifier of the outside expression (absolute path is not possible because the universal set has no identifier).

https://github.com/lenaRB/crml-compiler/blob/a55b07c31721a470f8e92894090474308ff142e1/src/test/resources/testFiles/spec-doc-examples/RealConstructorsExample1.crml#L1-L7


