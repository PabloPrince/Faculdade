%{
#include <stdlib.h>
#include "y.tab.h"
%}


%%


[0-9]+ {
  yylval.ival = atoi(yytext);
  return NUM; 
  	
}




"+"	{ return ADD; }
"-"	{ return SUB; }
"*"	{ return MUL; }
"/"	{ return DIV; }
[ \t\n]+ {};
["("]+  { return '('; }
[")"]+  { return ')'; }
%%




int yywrap()  {return 1;}
