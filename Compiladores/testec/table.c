#include<stdio.h>
#include<stdlib.h>
#include <string.h>
#include<C:\Users\max\Desktop\testec\table.h>

int main(){

    int cont = 0, termino = 0;
    char regra[50];
    char *gramatica[50];

    while(termino < 2){
        printf("Formato da linha: Nao terminal -> expressao, Exemplo: E -> E + T \n");
        printf("Digite a %d linha da gramatica: \n", termino);
        scanf(" %[^\n]s",regra);
        remove_esp(regra);
        printf(" %d %s\n",termino,regra);
        gramatica[termino] = regra;
        termino++;
    }
    for (int i = 0; i< termino;i++){
        printf("\n%s\n",gramatica[i]);
    }

    return 0;
}
