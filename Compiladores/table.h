//---------------------------------------------------------------------------------------------------------------

/* Remove espaços da expressao */

void remove_esp(char str[]) {
int i, j = 0, tam = strlen(str);
for(i=0; i<tam; i++) {
        if(str[i] != ' ') {
                str[j] = str[i];
                j++;
    }
}
   str[j] = '\0';

}

//---------------------------------------------------------------------------------------------------------------

/* Cria a Matriz de Itens */

int linha = 0;

void item(char regra[],char itens[][30]) {
    int i, j, c,k = 0;
    char tmp_regra[10],tmp_itens[30][30];

    if(regra[0] == 'S'){
        for(j = 3; j <=strlen(regra);j++){
            strcpy(tmp_regra,regra);
            for(i = strlen(regra); i >= j ; i--){
                tmp_regra[i+1] = tmp_regra[i];
            }

            tmp_regra[j] = '.';
            strcpy(tmp_itens[k++],tmp_regra);
            linha++;
            for(c = 0; c <= linha;c++){
                strcpy(tmp_itens[c+2],itens[c]);
            }
        }
        for(c = 0; c <= linha;c++){
            strcpy(itens[c],tmp_itens[c]);
        }
    } else{
        for(j = 3; j <=strlen(regra);j++){
            strcpy(tmp_regra,regra);
            for(i = strlen(regra); i >= j ; i--){
                tmp_regra[i+1] = tmp_regra[i];
            }

            tmp_regra[j] = '.';
            strcpy(itens[linha++],tmp_regra);
        }
    }
}

//---------------------------------------------------------------------------------------------------------------

/* Cria a gramatica aumentada */

void gramaup(char gramatica[][10],char gramaticaup[][10],int linha){
    int i = 0;
    char tmp_regra[10] = {"S->"};

    tmp_regra[strlen(tmp_regra)] = gramatica[0][0];
    tmp_regra[strlen(tmp_regra)+1] = '\0';
    strcpy(gramaticaup[0],tmp_regra);

    for(i = 0; i <= linha;i++){
        strcpy(gramaticaup[i+1],gramatica[i]);
    }
}

//---------------------------------------------------------------------------------------------------------------

/* Verifica se um dado item pertence ao fecho */

int pertence(char fecha[][30][30],char itens[][30],int m,int n,int c){
    int j;

    for(j = 0; j < n;j++){
        if(!strcmp(fecha[m][j],itens[c])){
            return 1;
        }
    }
    return 0;
}

//---------------------------------------------------------------------------------------------------------------

/* Verifica se o ultimo item do fecho gera mais algum item */

int p = 0, f = 0;

void fecho(int i, int j, int c, int k, int tamanho_itens, char fecha[][30][30],char tmp_itens[][30],char itens[][30]){
    for(i = 0; i < tamanho_itens;i++){
        if(tmp_itens[i] != '0'){
            if(k > f){
                f = k;
            }
            k = 0;
            strcpy(fecha[p][k++],tmp_itens[i]);
            strcpy(tmp_itens[i],"0");
            for(j = 1; j < strlen(fecha[p][k-1]);j++){
                if(fecha[p][k-1][j] == '.'){
                    if((fecha[p][k-1][j+1] >= 'A') && (fecha[p][k-1][j+1] <= 'Z') || (fecha[p][k-1][j+1] == 'n')){
                        for(c = 0; c < tamanho_itens;c++){
                            if((fecha[p][k-1][j+1] == itens[c][0]) && (itens[c][3] == '.')){
                                if(!pertence(fecha,itens,p,f,c)){
                                    printf("--nlido Acrescentei %s no fecho na linha %d na coluna %d--\n",itens[c],p,k);
                                    strcpy(fecha[p][k++],itens[c]);
                                    strcpy(tmp_itens[c],"0");
                                }
                            }
                        }
                    } else if ((fecha[p][k-1][j-1] >= 'A') && (fecha[p][k-1][j-1] <= 'Z') || (fecha[p][k-1][j-1] == 'n')){
                        for(c = 0; c < tamanho_itens;c++){
                            if((fecha[p][k-1][j-1] == itens[c][0]) && (itens[c][j-1] == fecha[p][k-1][j-1]) && (itens[c][j] == '.')){
                                if(!pertence(fecha,itens,p,k-1,c)){
                                    printf("--lido Acrescentei %s no fecho na linha %d na coluna %d--\n",itens[c],p,k);
                                    strcpy(fecha[p][k++],itens[c]);
                                    strcpy(tmp_itens[c],"0");
                                }
                            }
                        }
                    }
                    p++;
                }
            }
        }
    }
}

//---------------------------------------------------------------------------------------------------------------

/* Cria o fechamento de cada conjunto de itens */

void fechamento(char itens[][30],char fecha[][30][30],int tamanho_itens){
    int i,j,c,k = 0;
    char tmp_itens[tamanho_itens][30];

    for(i = 0; i < tamanho_itens;i++){
        strcpy(tmp_itens[i],itens[i]);
    }

    fecho(i,j,c,k,tamanho_itens,fecha,tmp_itens,itens);

    printf("\n");
    for(i = 0;i < p; i++){
        for(j = 0; j < f;j++){
            if((fecha[i][j][0] >= 'A') && (fecha[i][j][0] <= 'Z')){
                printf("I[%d]:%s\n",i,fecha[i][j]);
            }
        }
        printf("\n");
    }
}
