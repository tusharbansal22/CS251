%{
#include <stdio.h>
extern int yylex();
extern int yyparse();
void yyerror(const char *s);
%}

%token INCLUDE MAIN SM CM INT FLOAT CHAR VOID RETURN PRINTF SCANF PTR FOR IF ELSE TRUE FALSE ADD SUB MUL DIV OP CP OCP CCP LE GE EQ CEQ NE GT LT AND OR NUM ID STR CHARACTER EOL
%start program

%%

program: header functions main_function {printf("The code is valid."); return 0;}
    | main_function {printf("The code is valid."); return 0;}
    ;

header: INCLUDE;

main_function: INT MAIN OP CP fun_block;

functions: datatype ID OP datatype ID CP fun_block functions
    |
    ;

datatype: INT
    | FLOAT
    | CHAR
    ;

fun_block: OCP stmts RETURN stmt CCP 
    ;

block:stmt
    | OCP stmts CCP
    ;

stmts: stmt stmts
    | 
    ;

ids: CM ID ids 
    |
    ;

init: datatype ID ids
    ;

stmt: expr SM
    | IF OP expr CP block else
    | FOR OP stmt stmt expr CP block
    | init SM
    ;

else: ELSE block
    |
    ;

expr: ID
    | NUM
    | PRINTF OP STR CP 
    | SCANF OP STR CM PTR CP
    | SCANF OP STR CP
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
    | expr CEQ expr
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "error: %s\n", s);
}

int main(void) {
    yyparse();
    return 0;
}
