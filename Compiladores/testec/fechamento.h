#ifndef fech
#define fech

#include "fila.h"

int pertence(char item[], node **fechamento){
    int i;

    for(i = 0; fechamento[i]->num; i++)
        if(contido(fechamento[i], item))
            return 1;

    return 0;
}

void padrao(char primario[], char item[][30], node *fechamento, int qtdItens, int i){
    char itemGerador[3];
    char itemGerado[8];
    char primarioGerado[8];

    for(; i < qtdItens; i++){
        if(!strcmp(primario, item[i]))
            continue;

        strcpy(primarioGerado, strstr(primario, "."));
        primarioGerado[2] = '\0';

        if(!('A' <= primarioGerado[1] && primarioGerado[1] <='Z')){
            strcpy(primarioGerado, strstr(primario, ".") - 1);
            primarioGerado[2] = '\0';
        }

        strcpy(itemGerador, item[i]);
        itemGerador[1] = '\0';

        strcpy(itemGerado, item[i] + 3);

        if(1 && strstr(itemGerado, primarioGerado) - itemGerado == 0 &&  !contido(fechamento, item[i]))
            if(primarioGerado[1] == itemGerador[0] || primarioGerado[0] == itemGerador[0])
                insereFim(fechamento, item[i]);

        if(1 && primarioGerado[0] == '.' && !strcmp(primarioGerado + 1, itemGerador) && itemGerado[0] == '.' && !contido(fechamento, item[i])){
            //printf("1: %s\n", item[i]);//
            insereFim(fechamento, item[i]);
            padrao(item[i], item, fechamento, qtdItens, i + 1);
        }
    }
}

void geraFechamento(char itens[][30], node **fechamento, int qtdItens){
    int i, j, nGrupo = 0;

    for(i = 0; i < qtdItens; i++){
        if(!pertence(itens[i], fechamento)){
            //printf("Grupo %d criado!\n", nGrupo);
            insereInicio(fechamento[nGrupo], itens[i]);

            padrao(itens[i], itens, fechamento[nGrupo], qtdItens, 0);

            nGrupo++;
        }
    }
}

#endif // fech
