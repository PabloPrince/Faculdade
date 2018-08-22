%{
/*Declarção das variáveis em C*/
#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int yyparse();
extern FILE* yyin;

void yyerror(const char* s);
%}

%union {
	int ival;
	float fval;
}

/* Constantes */
%token<ival> T_INT
%token<fval> T_FLOAT
%token T_NEWLINE T_QUIT
%left T_SOMA T_SUBT
%left T_MULT T_DIVIDE
%token T_ESQUE T_DIREITA

%type<ival> expr
%type<fval> m_expr

/* Símbolo inicial da gramática */
%start calc

%%

calc: 
	   | calc line
;

/*Poduções de um não termnial | */
line: T_NEWLINE
    | m_expr T_NEWLINE 	{ printf("\tNotacao Pos-fixa\n");}
    | expr T_NEWLINE 	{ printf("\tNotacao Pos-fixa\n"); } 
    | T_QUIT T_NEWLINE 	{ printf("bye!\n"); exit(0); }
;

/* Gramática com expressões com números reais 
O que se encontra entre as chaves é as ações semanticas da gramática*/
m_expr: T_FLOAT                 	 { $$ = $1; }
	  | m_expr T_SOMA m_expr	 { $$ = $1 + $3; }/*{$$<- NextRegister; Emit(add, $1, $3, $$)}*/
	  | m_expr T_SUBT m_expr	 { $$ = $1 - $3; }/*{$$<- NextRegister; Emit(sub, $1, $3, $$)}*/
	  | m_expr T_MULT m_expr 	 { $$ = $1 * $3; }/*{$$<- NextRegister; Emit(mult, $1, $3, $$)}*/
	  | m_expr T_DIVIDE m_expr	 { $$ = $1 / $3; }/*{$$<- NextRegister; Emit(div, $1, $3, $$)}*/
	  | T_ESQUE m_expr T_DIREITA	 { $$ = $2; }
	  | expr T_SOMA m_expr		 { $$ = $1 + $3; }/*{$$<- NextRegister; Emit(add, $1, $3, $$)}*/
	  | expr T_SUBT m_expr		 { $$ = $1 - $3; }/*{$$<- NextRegister; Emit(sub, $1, $3, $$)}*/
	  | expr T_MULT m_expr	 	 { $$ = $1 * $3; }/*{$$<- NextRegister; Emit(mult, $1, $3, $$)}*/
	  | expr T_DIVIDE m_expr	 { $$ = $1 / $3; }/*{$$<- NextRegister; Emit(div, $1, $3, $$)}*/
	  | m_expr T_SOMA expr		 { $$ = $1 + $3; }/*{$$<- NextRegister; Emit(add, $1, $3, $$)}*/
	  | m_expr T_SUBT expr		 { $$ = $1 - $3; }/*{$$<- NextRegister; Emit(sub, $1, $3, $$)}*/
	  | m_expr T_MULT expr	 	 { $$ = $1 * $3; }/*{$$<- NextRegister; Emit(mult, $1, $3, $$)}*/
	  | m_expr T_DIVIDE expr	 { $$ = $1 / $3; }/*{$$<- NextRegister; Emit(div, $1, $3, $$)}*/
	  
;

/* Gramática com expressões somente com inteiros */
expr: T_INT				{ printf(" %d", $1); }
	  | expr T_SOMA expr		{ printf(" +"); }
	  | expr T_SUBT expr		{ printf(" -"); }
	  | expr T_MULT expr		{ printf(" *"); }
	  | expr T_DIVIDE expr		 { printf(" /"); }  
	  | T_ESQUE expr T_DIREITA	{ $$ = $2; }
;


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
