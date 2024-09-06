# JPACRUDProject

| Category | Operator | Operation | Associativity | Types |
|---|:---:|---|:---:|---|
| Grouping | () | n/a | |
| Access | . | Property access | L | |
| | [] | Array element access | n/a | |
| | new f() | Constructor call | n/a | |
| | f() | Function call | n/a | |
| | import() | Module import | n/a | |
| Postfix/Unary | v++ | Pre-increment | n/a | any -> num |
| | v-- | Post-increment | n/a | any -> num |
| Prefix/Unary | ++v | Pre-increment | n/a | any -> num |
| | --v | Pre-decrement | n/a | any -> num |
| | -v | Unary minus | n/a | any -> num |
| | +v | Unary plus | n/a | any -> num |
| | !v | Invert boolean | n/a | bool -> bool|
| | typeof |Determine type| n/a | any -> str|
| | delete |Remove property of obj| n/a | val -> bool|
| Exponentiation | v**n | Exponentiation | R | any -> num |
| Multiplicative | *, /, % | Multiply,divide,remainder| L |num,num -> num|
| Additive | +,- | Add,subtract | L |any,any -> num |
| | + | String concatenation | L | str,any -> str |
| Bitwise shift | <<,>>,>>> | Shift bits left/right | L | any -> num |
| Relational | <, <=, >, >= | Compare numeric/alpha order | L |any,any -> bool |
| | instanceof | Test object class| L | obj,func -> bool|
| | in | Test if property exists| L | str,obj -> bool|
| Equality | == | Equality| L | any,any -> bool|
| | != | Inequality| L|any,any -> bool|
| | === | Strict equality| L|any,any -> bool|
| | !== | Strict inequality| L|any,any -> bool|
| Bitwise logical | &,&#124;,^ | Bitwise AND/OR/XOR | any -> num |
| Logical AND | && | Compute logical AND | L |any,any -> boolean |
| Logical OR | &#124;&#124; | Compute logical OR | L |any,any -> boolean |
| Assignment, etc. | = |Assignment|R|val, any -> any|
| | *=, /= , %=, +=, -=, etc. | Operate and assign | R | val,any -> any|
| | ? : | Ternary Operator | R | bool,any,any -> any |
| Comma | , | Comma operator | L | any -> any |
