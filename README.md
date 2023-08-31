### Introduction to Assignment 1

This is the README file for the Assignment 1 of CS251 based on Lexical Analysis. The team members are Aditya Sankhla (12140060) and Tushar Bansal (12141680)

### Features of our Analyser

Here we have implemented a lexical analayser for C language using the lex tool. This compiler explicitly recognises the following:

- Preprocessor Directives
- Common Data Types like `int`, `char`, `bool`, `string`, `float`, `double`
- Common Keywords like `main`, `void`, `return`, `struct`, `typedef`
- `if` statements and `else` statements
- `for` statements and `while` statements
- String literals like \"hello\"
- `continue` and `break` statements
- Curved and Curly brackets
- Constants like `123` and Floats like `25.12`
- Basic Operators
- Logical Operators like `&&` and `||`
- Bitwise Operators like `&`, `|`, `^`
- Shift Operators i.e. `>>` and `<<`
- Relational Operators like `==`, `>=`, `<=`, `!=`, `>`, `<`
- Identifiers (variable names)
- Line and Block comments
- `;` : Delimiter

### How to run

To run this analyser, simply run the command `flex lexical_analyzer.l` to convert into a C file and then we can compile it using gcc compiler. Finally, run the `a.out` or `a.exe` file.

Now, we can simply copy paste a program into the command line and hit enter and it will lexically analyse the entire program as the output.

### Added feature

We have added this feature wherein, all we need to do is modify the test.c file and then run the file to analyze it. To make use of this feature, uncomment the lines inside the `main` in `lexical_analyzer.l` file and then compile it. After running it will automatically read the file and then analyze it.
