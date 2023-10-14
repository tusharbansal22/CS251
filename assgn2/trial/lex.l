%{
#include "y.tab.h"
extern int yylval;
%}

%%

^"#include"[ ]*<.+\.h>      { return INCLUDE; }
";"                         { return SM; }
"int"                       { return INT; }
"float"                     { return FLOAT; }
"char"                      { return CHAR; }
"void"                      { return VOID; }
"return"                    { return RETURN; }
"for"	                    { return FOR; }
"if"	                    { return IF; }
"else"	                    { return ELSE; }
"true"                      { return TRUE; }
"false"                     { return FALSE; }
"+"                         { return ADD; }
"-"                         { return SUB; }
"*"                         { return MUL; }
"/"                         { return DIV; }
"("                         { return OP; }
")"                         { return CP; }
"{"                         { return OCP; }
"}"                         { return CCP; }
"<="                        { return LE; }
">="                        { return GE; }
"="                        { return EQ; }
"!="                        { return NE; }
">"	                        { return GT; }
"<"	                        { return LT; }
"&&"	                    { return AND; }
"||"	                    { return OR; }
[0-9]+                      { yylval = atoi(yytext); return NUM; }
[a-zA-Z]([a-zA-Z]|[0-9])*   { return ID; }
["].*["]                    { return STR; }
['].[']                     { return CHARACTER; }
\n      { }

%%
