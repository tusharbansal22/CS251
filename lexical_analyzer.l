%{
  #include <stdio.h>
  #include <string.h>
%}

/* Rule Section */
%%

#.* {printf("\n%s is a T_PREPROCESSOR_DIR",yytext);}
"\n" {printf("\n");}
int|char|string|bool|float|double  {printf("\n%s is a T_DATA_TYPE",yytext);}
struct|typedef|do|break|continue|void|switch|return|main {printf("\n%s is a T_KEYWORD",yytext);}
" " {}
"if ("(.)*")""{"(.)*"}" {printf("\n%s is a T_IF",yytext);}
"else""{"(.)*"}" {printf("\n%s is a T_ELSE",yytext);}
"for("(.)*";"(.)*";"(.)*")""{"(.)*"}" {printf("\n%s is a T_FOR",yytext);}
"while("(.)*")""{"(.)*"}" {printf("\n%s is a T_WHILE",yytext);}
"\""(.)*"\"" {printf("\n%s is a T_STRING_LITERAL",yytext);}
"("|")" {printf("\n%s are T_BRACKETS ",yytext);}
"{"|"}" {printf("\n%s are T_CURLY_BRACKETS ",yytext);}
[0-9]+ {printf("\n%s is a T_CONST ",yytext);}
[0-9]+"."[0-9]+ {printf("\n%s is a T_FLOAT ",yytext);}
";" {printf("\n%s is a T_DELIMITER ",yytext);}
"+"|"-"|"*"|"/"|"%"|"=" {printf("\n%s is a T_OPERATOR ",yytext);}
"&"|"|"|"^" {printf("\n%s is a T_BITWISE_OPERATOR ",yytext);}
"<<"|">>" {printf("\n%s is a T_SHIFT_OPERATOR ",yytext);}
"=="|"!="|"<"|">"|"<="|">=" {printf("\n%s is a T_RELATIONAL_OPERATOR ",yytext);}
[a-zA-Z_]([a-zA-Z0-9_])* {printf("\n%s is a T_IDENTIFIER ",yytext);}
"/*"(.)*"*/" {printf("\n%s is a T_BLOCK_COMMENT ",yytext);}
"//"(.)* {printf("\n%s is a T_LINE_COMMENT ",yytext);}
 . {printf("\t");} 
%%

int main(){
  FILE *file;
  file=fopen("test.c","r");
  if(!file)
  {
  printf("could not open the file");
  exit(0);
  }
  yyin=file;
  yylex();
  printf("\n");
  return(0);
}

int yywrap()
{
return(1);
  yylex();
  return 0;
}
