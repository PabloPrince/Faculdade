%{
#include "common.h"
#include "parser.h"
%}
 
/* Definições */
STRING [a-z][a-z0-9]*
WHITESPACE [ \n\r\t]+
DIGITS [0-9]+
ANY_CHAR .
 
%option case-insensitive
 
%% /* Regras */
 
{WHITESPACE} /* Ignore */ ;
 
"SELECT" { return T_SELECT; }
"FROM" { return T_FROM; }
 
{STRING} { return T_STRING; }
{DIGITS} { return T_DIGIT; }
 
"," { return ','; }

"`" { return '`'; }
 
{ANY_CHAR} {printf("Unexpected character in input: '%c' (ASCII=%d)\n", yytext[0], yytext[0]);}
%%