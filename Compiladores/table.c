#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "table.h"

int main(){

    int i, linha = 0,para = 0, linhaerro, tamitens = 0;
    char regra[15], nreg[1];
    char gramatica[10][10], itens[30][30], gramaticaup[10][10],fecha[30][30][30];

    while(para == 0){
        printf("Formato da linha: Nao terminal -> expressao, Exemplo: E -> E + T \n");
        printf("Nao terminais validos apenas letra maiusculas [A-Z]\n");
        printf("Terminais validos apenas: +, -, *, /, n, (, ) \n");
        printf("Digite a %d linha da gramatica: \n", linha);
        scanf(" %[^\n]s",regra);
        remove_esp(regra);
        tamitens = tamitens + strlen(regra) - 2;
        printf("\n");
        if(strlen(regra) > 3){
            item(regra,itens);
        }
        strcpy(gramatica[linha],regra);
        printf("\nDeseja digitar outra regra? s/n ");
        scanf(" %s",nreg);
        printf("\n");
        if(!strcmp(nreg,"s")){
            linha++;
        }else {
            para++;
        }
    }

    para = 0;
    while(para == 0){
        printf("\nGramatica: \n");
        for (i = 0; i<= linha;i++){
            printf("linha %d: %s\n",i, gramatica[i]);
        }

        printf("\nSua gramatica esta certa? s/n ");
        scanf(" %s",nreg);

        if(!strcmp(nreg,"s")){
            para++;
        }else {
            printf("Digite a linha que esta errada: ");
            scanf("%d",&linhaerro);
            printf("Agora digite a regra desta linha: ");
            scanf(" %[^\n]s",regra);
            remove_esp(regra);
            tamitens = tamitens + strlen(regra) - 2;
            if(strlen(regra) > 3){
                item(regra,itens);
            }
            strcpy(gramatica[linhaerro],regra);
        }
    }

    printf("\nGramatica: \n");
    for (i = 0; i<= linha;i++){
        printf("linha %d: %s\n",i, gramatica[i]);
    }

    gramaup(gramatica,gramaticaup,linha);
    item(gramaticaup[0],itens);
    printf("\nGramatica Aumentada: \n");
    for (i = 0; i<= linha+1;i++){
        printf("linha %d: %s\n",i, gramaticaup[i]);
    }

    printf("\nItens: ");
    printf("%d\n",tamitens+2);
    for(i = 0; i <= tamitens+1;i++){
        printf("%s\n",itens[i]);
    }

    printf("\nFechamento: \n");
    fechamento(itens,fecha,tamitens+2);

    return 0;
}
