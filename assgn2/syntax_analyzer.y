%{
#include <stdio.h>
%}

%token T_INT T_CHAR T_STRING T_BOOL T_FLOAT T_DOUBLE
%token T_TYPEDEF T_DO T_VOID T_SWITCH T_RETURN T_MAIN
%token T_STRUCT
%token T_STACK
%token T_QUEUE
%token T_IF
%token T_ELSE
%token T_FOR
%token T_WHILE
%token T_STRING_LITERAL
%token T_CONTINUE
%token T_BREAK
%token T_BRACKETS 
%token T_CURLY_BRACKETS 
%token T_CONST 
%token T_FLOAT 
%token T_DELIMITER 
%token T_OPERATOR 
%token T_LOGICAL_OPERATOR 
%token T_BITWISE_OPERATOR 
%token T_SHIFT_OPERATOR 
%token T_RELATIONAL_OPERATOR 
%token T_IDENTIFIER 
%token T_BLOCK_COMMENT 
%token T_LINE_COMMENT 

%%

program: statement_list

statement_list: statement_list statement
              | statement

statement: expr ';'
         | declaration ';'
         | conditional_statement
         | loop_statement

expr: expr '+' expr
    | expr '-' expr
    | expr '*' expr
    | expr '/' expr
    | '(' expr ')'
    | '-' expr %prec NEGATIVE
    | NUMBER

declaration: type IDENTIFIER

type: 'int'
    | 'char'
    | 'float'
    | 'double'

conditional_statement: 'if' '(' expr ')' '{' statement_list '}'
                    | 'if' '(' expr ')' '{' statement_list '}' 'else' '{' statement_list '}'

loop_statement: 'while' '(' expr ')' '{' statement_list '}'
              | 'for' '(' declaration ';' expr ';' expr ')' '{' statement_list '}'

%%

int yyerror(char *s) {
  fprintf(stderr, "error: %s\n", s);
  return 0;
}

int main(void) {
  return yyparse();
}
