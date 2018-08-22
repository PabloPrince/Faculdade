%{
/*Declarção das variáveis em C*/
#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int yyparse();
extern FILE* yyin;

int reg = 1;

void yyerror(const char* s);
%}

%union {
	int ival;
}

/* Constantes */
%token<ival> T_INT
%token T_NEWLINE T_QUIT
%left T_SOMA T_SUBT
%left T_MULT T_DIVIDE
%token T_ESQUE T_DIREITA

%type<ival> expr termo fator

/* Símbolo inicial da gramática */
%start calc

%%

calc:
	   | calc line
;

line: T_NEWLINE
    | expr T_NEWLINE 	{ printf("Digite quit ou exit para sair\n"); reg = 1; }
    | T_QUIT T_NEWLINE 	{ printf("bye!\n"); exit(0); }
;

expr:  expr T_SOMA termo         { $$ = $1 + $3;

                                  printf("\n");
                                  printf("Somando: \n");
                                  printf("load %d,r%d\n",$1,reg++);
                                  printf("load %d,r%d\n",$3,reg++);
                                  printf("add r%d,r%d\n",reg-2,reg-1);
                                  printf("store r%d,%d\n",reg++,$$);

                                 }

       | expr T_SUBT termo       { $$ = $1 - $3;

                                  printf("\n");
                                  printf("Subtraindo: \n");
                                  printf("load %d,r%d\n",$1,reg++);
                                  printf("load %d,r%d\n",$3,reg++);
                                  printf("sub r%d,r%d\n",reg-2,reg-1);
                                  printf("store r%d,%d\n",reg++,$$);

                                 }
       | termo                   { $$ = $1; }
termo: termo T_MULT fator        { $$ = $1 * $3;

                                  printf("\n");
                                  printf("Multiplicando: \n");
                                  printf("load %d,r%d\n",$1,reg++);
                                  printf("load %d,r%d\n",$3,reg++);
                                  printf("mult r%d,r%d\n",reg-2,reg-1);
                                  printf("store r%d,%d\n",reg++,$$);

                                 }
       | termo T_DIVIDE fator    { $$ = $1 / $3;

                                  printf("\n");
                                  printf("Dividindo: \n");
                                  printf("load %d,r%d\n",$1,reg++);
                                  printf("load %d,r%d\n",$3,reg++);
                                  printf("div r%d,r%d\n",reg-2,reg-1);
                                  printf("store r%d,%d\n",reg++,$$);

                                 }
       | fator                   { $$ = $1; }
fator: T_ESQUE expr T_DIREITA    { $$ = $2; }
       | T_INT                   { $$ = $1; }


/* Código em C */
%%
/*O yyparser() retorna 0 = sucesso e diferente de 0 é falha*/
int main() {
	yyin = stdin;

	do {
		yyparse();
	} while(!feof(yyin));

	return 0;
}

/*retorna error caso a palavra não seja aceita pela analise sintatica*/
void yyerror(const char* s) {
	fprintf(stderr, "Parse error: %s\n", s);
	exit(1);
}
