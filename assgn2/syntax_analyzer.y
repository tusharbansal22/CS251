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
    | '-' expr 
    | T_CONST

declaration: type T_IDENTIFIER

type: 'i''n''t'
    | 'c''h''a''r'
    | 'f''l''o''a''t'
    | 'd''o''u''b''l''e'

conditional_statement: 'i''f' '(' expr ')' '{' statement_list '}'
                    | 'i''f' '(' expr ')' '{' statement_list '}' 'e''l''s''e' '{' statement_list '}'

loop_statement: 'w''h''i''l''e' '(' expr ')' '{' statement_list '}'
              | 'f''o''r' '(' declaration ';' expr ';' expr ')' '{' statement_list '}'

%%

int yyerror(char *s) {
  fprintf(stderr, "error: %s\n", s);
  return 0;
}

int main(void) {
  return yyparse();
}
