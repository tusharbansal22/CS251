%{
#include <stdio.h>
extern int yylex();
extern int yyparse();
void yyerror(const char *s);
%}

%token INCLUDE SM INT FLOAT CHAR VOID RETURN FOR IF ELSE TRUE FALSE ADD SUB MUL DIV OP CP OCP CCP LE GE EQ NE GT LT AND OR NUM ID STR CHARACTER EOL
%start program

%%

program: header function {printf("The code is valid."); return 0;}
    ;

header: INCLUDE;

function: datatype ID OP datatype ID CP block;

datatype: INT
    | FLOAT
    | CHAR
    ;

block:stmt
    | OCP stmts CCP
    ;

stmts: stmt stmts
    | 
    ;

stmt: expr SM
    | IF OP expr CP block else
    | FOR OP stmt stmt expr CP block
    |
    ;

else: ELSE block
    |
    ;

expr: ID
    | NUM
    | expr ADD expr
    | expr SUB expr
    | expr MUL expr
    | expr DIV expr
    | expr LE expr
    | expr GE expr
    | expr EQ expr
    | expr NE expr
    | expr GT expr
    | expr LT expr
    | expr AND expr
    | expr OR expr
    ;

/* line: EOL
    | exp EOL { printf("%d\n", $1); }
    ; */

/* exp: NUM
   | exp ADD exp { $$ = $1 + $3; }
   | exp SUB exp { $$ = $1 - $3; }
   | exp MUL exp { $$ = $1 * $3; }
   | exp DIV exp { $$ = $1 / $3; }
   | OP exp CP   { $$ = $2; }
   ; */

%%

void yyerror(const char *s) {
    fprintf(stderr, "error: %s\n", s);
}

int main(void) {
    yyparse();
    return 0;
}
