%{
  #include <stdio.h>
  #include <string.h>
}%

/* Rule Section */
%%
%%

int yywrap(void){}

int main(){
  yylex();
  return 0;
}