%token NAME NUMBER
%start statement
%%
statement: NAME '=' expr { $$ = $1;
printf("(%d)\n", $3); }
| expr { $$ = $1; printf("= %d\n", $1); }
;
expr: expr '+' NUMBER { $$ = $1 + $3; }
| expr '-' NUMBER { $$ = $1 - $3; }
| NUMBER { $$ = $1; }
;
%%
#include <stdio.h>
extern FILE *yyin;
yyerror(s)
char *s;
{
fprintf(stderr,”%”\n”,s);
}
main ()
{
do { yyparse(); }
while (!feof(yyin));
}