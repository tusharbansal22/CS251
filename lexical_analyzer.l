%{
  #include <stdio.h>
  #include <string.h>
%}

/* Rule Section */
%%
"int"|"char"|"string"|"bool"|"float"|"double" {printf("Data type ");}
" " {}
"if("(.)*")""{"(.)*"}" {printf("IfElse Statement ");}
[0-9]+ {printf("Constant ");}
";" {printf("Delimiter ");}
"+"|"-"|"*"|"/"|"%"|"=" {printf("Operator ");}
[a-zA-Z_]([a-zA-Z0-9_])* {printf("Identifier ");}
"/*"(.)*"*/" {printf("Comment ");}
 . {printf("SaxSux ");} 
%%

int yywrap(void){}

int main(){
  yylex();
  return 0;
}