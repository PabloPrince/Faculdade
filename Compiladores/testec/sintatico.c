#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sintatico.h"

int main(void) {
    char exp[50];
    char cifra[2] = "$";
    node *PILHA = (node *) malloc(sizeof(node));
    char gramatica[7][7], acao[12][6][4];
    int desvio[12][3], i = 0, j = 0;

    printf("A expressao deve ter apenas os seguintes caracteres: \n");
    printf("Caracteres validos: n,+,*,(,).\n");
    printf("Digite a expressao: ");
    scanf(" %[^\n]s", exp);
    remove_esp(exp);
    strcat(exp,cifra);

    printf("\nExpressao: %s\n",exp);

    geragramatica(gramatica);

    printf("\nGramatica: \n");
    for(i = 1; i <= 6; i++){
        printf("%s\n",gramatica[i]);
    }

    geraacao(acao);

    printf("\n Matriz acao: \n");
    for(i = 0; i < 12; i++){
        for(j = 0; j < 6;j++){
            printf("%3s ",acao[i][j]);
        }
        printf("\n");
    }

    geradesvio(desvio);

    printf("\n Matriz Desvio: \n");
    for(i = 0; i < 12; i++){
        for(j = 0; j < 3; j++){
            printf("%2d ",desvio[i][j]);
        }
        printf("\n");
    }

    printf("\n");
    inicia(PILHA);
    push(PILHA,0);
    exibe(PILHA);

    verifica(exp,PILHA,gramatica,acao,desvio);

    return 0;
}
