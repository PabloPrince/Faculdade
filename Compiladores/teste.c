#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Node{
 char *val;
 struct Node *prox;
};
typedef struct Node node;

int tam;

void inicia(node *PILHA);
void exibe(node *PILHA);
void libera(node *PILHA);
void push(node *PILHA, char *exp);
void pop(node *PILHA);


int main(void)
{
 char exp[50];
 char *M[7][10];
 int linha = 0 ,coluna = 0;
 node *PILHA = (node *) malloc(sizeof(node));

 if(!PILHA){
    printf("Sem memoria disponivel!\n");
    exit(1);
 }else{
    printf("Digite a expressao: ");
    scanf("%s", exp);
    inicia(PILHA);
 }

 M[1][1] = "0";
 M[1][2] = "0";
 M[1][3] = "0";
 M[1][4] = "0";
 M[1][5] = "RT";
 M[1][6] = "RT";
 M[1][7] = "0";
 M[1][8] = "0";
 M[2][1] = "RT+";
 M[2][2] = "RT-";
 M[2][3] = "0";
 M[2][4] = "0";
 M[2][5] = "0";
 M[2][6] = "0";
 M[2][7] = "e";
 M[2][8] = "e";
 M[3][1] = "0";
 M[3][2] = "0";
 M[3][3] = "0";
 M[3][4] = "0";
 M[3][5] = "YF";
 M[3][6] = "YF";
 M[3][7] = "0";
 M[3][8] = "0";
 M[4][1] = "e";
 M[4][2] = "e";
 M[4][3] = "YF*";
 M[4][4] = "YF/";
 M[4][5] = "0";
 M[4][6] = "0";
 M[4][7] = "e";
 M[4][8] = "e";
 M[5][1] = "0";
 M[5][2] = "0";
 M[5][3] = "0";
 M[5][4] = "0";
 M[5][5] = "n";
 M[5][6] = ")E(";
 M[5][7] = "0";
 M[5][8] = "0";

 printf("Tabela de simbolos\n");

 for(int l = 1; l <= 5; l++){
    for(int c = 1; c <= 8; c++){
        printf(" %3s  ",M[l][c]);
    }
    printf("\n");
 }

 for(int v = 0; v < strlen(exp); v++){
    node *topo = PILHA->prox, *segt = PILHA;
    while(topo->prox != NULL){
        segt = topo;
        topo = topo->prox;
    }
    if((!(strcmp(topo,"E"))) && (exp[v] == 69)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"R"))) && (exp[v] == 82)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"T"))) && (exp[v] == 84)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"Y"))) && (exp[v] == 89)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"F"))) && (exp[v] == 70)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"+"))) && (exp[v] == 43)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"-"))) && (exp[v] == 45)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"*"))) && (exp[v] == 42)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"/"))) && (exp[v] == 47)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"n"))) && (exp[v] == 110)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"("))) && (exp[v] == 40)){
        pop(PILHA);
    } else if ((!(strcmp(topo,")"))) && (exp[v] == 41)){
        pop(PILHA);
    } else if ((!(strcmp(topo,"$"))) && (exp[v] == 36)){
        pop(PILHA);
    } else {
        if(!(strcmp(topo,"E"))){
            linha = 1;
        } else if(!(strcmp(topo,"R"))){
            linha = 2;
        } else if(!(strcmp(topo,"T"))){
            linha = 3;
        } else if(!(strcmp(topo,"Y"))){
            linha = 4;
        } else if(!(strcmp(topo,"F"))){
            linha = 5;
        } else{
            linha = 0;
        }
        if (exp[v] == 43) {
            coluna = 1;
        } else if (exp[v] == 43) {
            coluna = 2;
        } else if (exp[v] == 45) {
            coluna = 3;
        } else if (exp[v] == 42) {
            coluna = 4;
        } else if (exp[v] == 47) {
            coluna = 5;
        } else if (exp[v] == 110) {
            coluna = 6;
        } else if (exp[v] == 40) {
            coluna = 7;
        } else if (exp[v] == 41) {
            coluna = 8;
        } else {
            coluna = 0;
        }
        if( linha == 0 || coluna == 0){
            printf("Erro");
        } else {
            push(PILHA,M[linha][coluna]);
            exibe(PILHA);
        }
    }

 }

 free(PILHA);
 return 0;
}

void inicia(node *PILHA)
{
 PILHA->prox = NULL;
 tam=0;
 push(PILHA,"$E");
}

int vazia(node *PILHA)
{
 if(PILHA->prox == NULL)
  return 1;
 else
  return 0;
}

void exibe(node *PILHA)
{
 if(vazia(PILHA)){
  printf("PILHA vazia!\n\n");
  return ;
 }

 node *tmp;
 tmp = PILHA->prox;
 printf("PILHA:");
 while( tmp != NULL){
  printf("%c ", tmp->val);
  tmp = tmp->prox;
 }
 printf("\n\n");
}

void libera(node *PILHA)
{
 if(!vazia(PILHA)){
  node *proxNode,
     *atual;

  atual = PILHA->prox;
  while(atual != NULL){
   proxNode = atual->prox;
   free(atual);
   atual = proxNode;
  }
 }
}

void push(node *PILHA, char *exp)
{
    for(int i = 0; i < strlen(exp);i++){
        node *novo=(node *) malloc(sizeof(node));
        if(!novo){
            printf("Sem memoria disponivel!\n");
            exit(1);
        }else{
            novo->val = exp[i];
        }

        novo->prox = NULL;

        if(vazia(PILHA))
            PILHA->prox=novo;
        else{
            node *tmp = PILHA->prox;

        while(tmp->prox != NULL)
            tmp = tmp->prox;

        tmp->prox = novo;
        }
        tam++;
    }
}


void pop(node *PILHA)
{
 if(PILHA->prox == NULL){
  printf("PILHA ja vazia\n\n");
 }else{
  node *ultimo = PILHA->prox, *penultimo = PILHA;

  while(ultimo->prox != NULL){
   penultimo = ultimo;
   ultimo = ultimo->prox;
  }

  penultimo->prox = NULL;
  tam--;
 }
}
