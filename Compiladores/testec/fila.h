#ifndef fila
#define fila

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Fila{
	char num[10];
	struct Fila *prox;
};
typedef struct Fila node;

void inicia(node *LISTA);
node *criaNo();
void insereFim(node *LISTA, char cadeia[]);
void insereInicio(node *LISTA, char cadeia[]);
void exibe(node *LISTA);
void libera(node *LISTA);
int contido(node *LISTA, char item[]);

void inicia(node *LISTA)
{
	LISTA->prox = NULL;
}

int vazia(node *LISTA)
{
	if(LISTA->prox == NULL)
		return 1;
	else
		return 0;
}

void insereFim(node *LISTA, char cadeia[])
{
	node *novo=(node *) malloc(sizeof(node));
	if(!novo){
		printf("Sem memoria disponivel!\n");
		exit(1);
	}
	strcpy(novo->num, cadeia);
	novo->prox = NULL;

	if(vazia(LISTA))
		LISTA->prox=novo;
	else{
		node *tmp = LISTA->prox;

		while(tmp->prox != NULL)
			tmp = tmp->prox;

		tmp->prox = novo;
	}
}

void insereInicio(node *LISTA, char cadeia[])
{
	node *novo=(node *) malloc(sizeof(node));
	if(!novo){
		printf("Sem memoria disponivel!\n");
		exit(1);
	}
	strcpy(novo->num, cadeia);

	node *oldHead = LISTA->prox;

	LISTA->prox = novo;
	novo->prox = oldHead;
}

void exibe(node *LISTA)
{
	if(vazia(LISTA)){
		printf("Lista vazia!\n\n");
		return ;
	}

	node *tmp;
	tmp = LISTA->prox;
    int i = 1;
	while( tmp != NULL){
		printf("%5s\n",tmp->num);
		tmp = tmp->prox;
	}
	printf("\n\n");
}

void libera(node *LISTA)
{
	if(!vazia(LISTA)){
		node *proxNode,
			  *atual;

		atual = LISTA->prox;
		while(atual != NULL){
			proxNode = atual->prox;
			free(atual);
			atual = proxNode;
		}
	}
}

int contido(node *LISTA, char item[]){
    node *temp = LISTA->prox;

    while(temp->num != NULL){
        if(!strcmp(temp->num, item))
            return 1;
        else
            temp = temp->prox;
    }
    return 0;
}

#endif
