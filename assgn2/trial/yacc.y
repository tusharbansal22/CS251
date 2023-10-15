%{
#include <stdio.h>
extern int yylex();
extern int yyparse();
void yyerror(const char *s);
%}

%token INCLUDE MAIN SM CM INT FLOAT CHAR VOID RETURN PRINTF SCANF PTR FOR IF ELSE TRUE FALSE ADD CADD INC SUB CSUB DEC MUL DIV OP CP OCP CCP LE GE EQ CEQ NE GT LT AND OR NUM ID STR CHARACTER EOL
%start program

%%

program: header function main_function {printf("The code is valid."); return 0;}
    | header main_function {printf("The code is valid."); return 0;}
    ;

header: INCLUDE;

function: datatype ID OP fun_param CP fun_block ;

functions: function
    | function functions 
    ;

main_function: INT MAIN OP CP fun_block;

datatype: INT
    | FLOAT
    | CHAR
    ;

fun_param: datatype ID
    | datatype ID CM fun_param
    ;

fun_block: OCP stmts RETURN stmt CCP 
    ;

fun_call: ID OP ID ids CP
    | ID OP CP
    ; 

block:stmt
    | OCP stmts CCP
    ;

stmts: stmt stmts
    | 
    ;

ids: CM ID meq ids 
    |
    ;

meq: EQ ID
    | EQ NUM
    | 
    ;

init: datatype ID ids
    | datatype ID meq ids
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
    | PRINTF OP STR ids CP
    | SCANF OP STR CM PTR CP
    | SCANF OP STR CP
    | INC ID
    | DEC ID
    | fun_call
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
    | expr CADD expr
    | expr CSUB expr
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "error: %s\n", s);
}

int main(void) {
    yyparse();
    return 0;
}
