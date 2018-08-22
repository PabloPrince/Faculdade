%{
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
%}


%union {
	int ival;
}


%token <ival> NUM


%left ADD SUB
%left MUL DIV
%%

NUM {printf("%d ", $1);}
	|e ADD e {printf("+ ");}
	|e SUB e {printf("- ");}
	|e MUL e {printf("* ");}
	|e DIV e {printf("/ ");}
	|'(' e ')'{}
	
;




%%




int main (void){
	
  return yyparse();


}


void yyerror (char *s){
puts(s);}