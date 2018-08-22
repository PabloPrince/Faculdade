#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Node{
 char *top;
 struct Node *prox;
};
typedef struct Node node;

int tam;

void inicia(node *PILHA);
void exibe(node *PILHA);
void push(node *PILHA, char *exp);
node *pop(node *PILHA);


int main(void)
{
 char exp[50];
 char *M[7][10];
 char *cifra = "$";
 int linha = 0 ,coluna = 0, lib = 1, para = 0;
 node *PILHA = (node *) malloc(sizeof(node));

 if(!PILHA){
    printf("Sem memoria disponivel!\n");
    exit(1);
 }else{
    printf("Digite a expressao: ");
    scanf("%s", exp);
    strcat(exp,cifra);
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

 int l = 0, c = 0;
 for(l = 1; l <= 5; l++){
    for(c = 1; c <= 8; c++){
        printf(" %3s  ",M[l][c]);
    }
    printf("\n");
 }
node *topo = PILHA->top;

 int v = 0;
 for(v = 0; v < strlen(exp); v++){

    if(para == 1) {
        break;
    }
    lib = 1;
    while(lib != 2) {
        if((!(strcmp(topo,"E"))) && (exp[v] == 69)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"R"))) && (exp[v] == 82)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"T"))) && (exp[v] == 84)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"Y"))) && (exp[v] == 89)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"F"))) && (exp[v] == 70)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"+"))) && (exp[v] == 43)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"-"))) && (exp[v] == 45)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"*"))) && (exp[v] == 42)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"/"))) && (exp[v] == 47)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"n"))) && (exp[v] == 110)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"("))) && (exp[v] == 40)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,")"))) && (exp[v] == 41)){
            topo = pop(PILHA);
            lib++;
        } else if ((!(strcmp(topo,"$"))) && (exp[v] == 36)){
            topo = pop(PILHA);
            printf("Sentença correta\n");
            lib++;
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
            } else if (exp[v] == 45) {
                coluna = 2;
            } else if (exp[v] == 42) {
                coluna = 3;
            } else if (exp[v] == 47) {
                coluna = 4;
            } else if (exp[v] == 110) {
                coluna = 5;
            } else if (exp[v] == 40) {
                coluna = 6;
            } else if (exp[v] == 41) {
                coluna = 7;
            } else if (exp[v] == 36) {
                coluna = 8;
            } else {
                coluna = 0;
            }
            if((linha == 0 || coluna == 0) || (M[linha][coluna] == "0")){
                printf("topo: %c\n",topo[0]);
                printf("exp: %c\n",exp[v]);
                printf("matriz: %s\n\n",M[linha][coluna]);
                exibe(PILHA);
                printf("Erro Sintatico");
                lib++;
                para = 1;
            } else {
                if(M[linha][coluna] == "e") {
                    printf("topo: %c\n",topo[0]);
                    printf("exp: %c\n",exp[v]);
                    printf("matriz: %s\n\n",M[linha][coluna]);
                    topo = pop(PILHA);
                    exibe(PILHA);
                } else {
                    printf("topo: %c\n",topo[0]);
                    printf("exp: %c\n",exp[v]);
                    printf("matriz: %s\n\n",M[linha][coluna]);
                    pop(PILHA);
                    push(PILHA,M[linha][coluna]);
                    topo = PILHA->top;
                    exibe(PILHA);
                }
            }
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
  printf("%c ", tmp->top);
  tmp = tmp->prox;
 }
 printf("\n\n");
}

void push(node *PILHA, char *exp)
{
    int i = 0;
    for(i = 0; i < strlen(exp);i++){
        node *novo=(node *) malloc(sizeof(node));
        if(!novo){
            printf("Sem memoria disponivel!\n");
            exit(1);
        }else{
            novo->top = exp[i];
        }

        novo->prox = NULL;

        if(vazia(PILHA))
            PILHA->prox=novo;
        else{
            node *tmp = PILHA->prox;

        while(tmp->prox != NULL)
            tmp = tmp->prox;

        tmp->prox = novo;
        PILHA->top = novo;
        }
        tam++;
    }
}

node *pop(node *PILHA)
{
 if(PILHA->prox == NULL){
  printf("PILHA ja vazia\n\n");
  return NULL;
 }else{
  node *ultimo = PILHA->prox, *penultimo = PILHA;

  while(ultimo->prox != NULL){
   penultimo = ultimo;
   ultimo = ultimo->prox;
  }

  penultimo->prox = NULL;
  tam--;
  return penultimo;
 }
}
