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

/* Estrutura do Nó */

struct Node{
    int topo;
    struct Node *prox;
};

typedef struct Node node;

int tam;

//-----------------------------------------------------------------------------------------------------------------

/* Inicia a Pilha */

void inicia(node *PILHA) {
    PILHA->prox = NULL;
    tam=0;
}

//-------------------------------------------------------------------------------------------------------------------

/* Verifica se a pilha esta vazia */

int vazia(node *PILHA) {
    if(PILHA->prox == NULL){
        return 1;
    } else{
        return 0;
    }
}

//-------------------------------------------------------------------------------------------------------------------

/* Exibe a pilha */

void exibe(node *PILHA) {
    if(vazia(PILHA)){
        printf("PILHA vazia!\n\n");
        return ;
    }

    node *tmp;
    tmp = PILHA->prox;
    printf("PILHA:");
    while( tmp != NULL){
        printf("%d ", tmp->topo);
        tmp = tmp->prox;
    }
    printf("\n\n");
}

//-------------------------------------------------------------------------------------------------------------------

/* Incrementa um valor no topo da pilha */

void push(node *PILHA, int estado) {
    node *novo=(node *) malloc(sizeof(node));
    if(!novo){
        printf("Sem memoria disponivel!\n");
        exit(1);
    }else{
        novo->topo = estado;
    }

    novo->prox = NULL;

    if(vazia(PILHA)){
        PILHA->prox=novo;
    }else{
        node *tmp = PILHA->prox;

        while(tmp->prox != NULL) {
            tmp = tmp->prox;
        }

        tmp->prox = novo;
    }
    PILHA->topo = novo;
    tam++;
}

//-------------------------------------------------------------------------------------------------------------------

/* Remove o topo da pilha */

node *pop(node *PILHA) {
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
        PILHA->topo = penultimo;
    }
}

//-------------------------------------------------------------------------------------------------------------------

/*  Separa o que fazer do valor do estado */

int separa(char acao[]){
    char tmpacao[3];
    int i,j = 0;

    strcpy(tmpacao,acao);

    for(i = 1; i < strlen(tmpacao); i++) {
        tmpacao[j] = tmpacao[i];
        j++;
    }
    tmpacao[j] = '\0';


    return atoi(tmpacao);
}

//-------------------------------------------------------------------------------------------------------------------

/*  Converte caractere da expressao em um valor numerico correspondente */

int convertexp(char exp[]){

    if(exp == '+'){
        return 0;
    } else if(exp == '-'){
        return 1;
    } else if(exp == '*'){
        return 2;
    } else if(exp == '/'){
        return 3;
    } else if(exp == '('){
        return 4;
    } else if(exp == ')'){
        return 5;
    } else if(exp == 'n'){
        return 6;
    } else if(exp == '$'){
        return 7;
    }
}

//-------------------------------------------------------------------------------------------------------------------

/*  Converte caractere da pilha em um valor numerico correspondente */

int convertpilha(char exp[]){

    if(exp == 'E'){
        return 0;
    } else if(exp == 'T'){
        return 1;
    } else if(exp == 'F'){
        return 2;
    }
}

//-------------------------------------------------------------------------------------------------------------------

/* Gera a gramatica */

void geragramatica(char gramatica[][7]){

    strcpy(gramatica[1],"E->E+T");
    strcpy(gramatica[2],"E->E-T");
    strcpy(gramatica[3],"E->T");
    strcpy(gramatica[4],"T->T*F");
    strcpy(gramatica[5],"T->T/F");
    strcpy(gramatica[6],"T->F");
    strcpy(gramatica[7],"F->(E)");
    strcpy(gramatica[8],"F->n");
}

//-------------------------------------------------------------------------------------------------------------------

/* Gera a matriz ação */

void geraacao(char acao[][8][4]){
    strcpy(acao[0][0],"0");
    strcpy(acao[0][1],"0");
    strcpy(acao[0][2],"0");
    strcpy(acao[0][3],"0");
    strcpy(acao[0][4],"s12");
    strcpy(acao[0][5],"0");
    strcpy(acao[0][6],"s15");
    strcpy(acao[0][7],"0");
    strcpy(acao[1][0],"s2");
    strcpy(acao[1][1],"s4");
    strcpy(acao[1][2],"0");
    strcpy(acao[1][3],"0");
    strcpy(acao[1][4],"0");
    strcpy(acao[1][5],"0");
    strcpy(acao[1][6],"0");
    strcpy(acao[1][7],"a");
    strcpy(acao[2][0],"0");
    strcpy(acao[2][1],"0");
    strcpy(acao[2][2],"0");
    strcpy(acao[2][3],"0");
    strcpy(acao[2][4],"s12");
    strcpy(acao[2][5],"0");
    strcpy(acao[2][6],"s15");
    strcpy(acao[2][7],"0");
    strcpy(acao[3][0],"r1");
    strcpy(acao[3][1],"r1");
    strcpy(acao[3][2],"s7");
    strcpy(acao[3][3],"s9");
    strcpy(acao[3][4],"0");
    strcpy(acao[3][5],"r1");
    strcpy(acao[3][6],"0");
    strcpy(acao[3][7],"r1");
    strcpy(acao[4][0],"0");
    strcpy(acao[4][1],"0");
    strcpy(acao[4][2],"0");
    strcpy(acao[4][3],"0");
    strcpy(acao[4][4],"s12");
    strcpy(acao[4][5],"0");
    strcpy(acao[4][6],"s15");
    strcpy(acao[4][7],"0");
    strcpy(acao[5][0],"r2");
    strcpy(acao[5][1],"r2");
    strcpy(acao[5][2],"s7");
    strcpy(acao[5][3],"s9");
    strcpy(acao[5][4],"0");
    strcpy(acao[5][5],"r2");
    strcpy(acao[5][6],"0");
    strcpy(acao[5][7],"r2");
    strcpy(acao[6][0],"r3");
    strcpy(acao[6][1],"r3");
    strcpy(acao[6][2],"s7");
    strcpy(acao[6][3],"s9");
    strcpy(acao[6][4],"0");
    strcpy(acao[6][5],"r3");
    strcpy(acao[6][6],"0");
    strcpy(acao[6][7],"r3");
    strcpy(acao[7][0],"0");
    strcpy(acao[7][1],"0");
    strcpy(acao[7][2],"0");
    strcpy(acao[7][3],"0");
    strcpy(acao[7][4],"s12");
    strcpy(acao[7][5],"0");
    strcpy(acao[7][6],"s15");
    strcpy(acao[7][7],"0");
    strcpy(acao[8][0],"r4");
    strcpy(acao[8][1],"r4");
    strcpy(acao[8][2],"r4");
    strcpy(acao[8][3],"r4");
    strcpy(acao[8][4],"0");
    strcpy(acao[8][5],"r4");
    strcpy(acao[8][6],"0");
    strcpy(acao[8][7],"r4");
    strcpy(acao[9][0],"0");
    strcpy(acao[9][1],"0");
    strcpy(acao[9][2],"0");
    strcpy(acao[9][3],"0");
    strcpy(acao[9][4],"s12");
    strcpy(acao[9][5],"0");
    strcpy(acao[9][6],"s15");
    strcpy(acao[9][7],"0");
    strcpy(acao[10][0],"r5");
    strcpy(acao[10][1],"r5");
    strcpy(acao[10][2],"r5");
    strcpy(acao[10][3],"r5");
    strcpy(acao[10][4],"0");
    strcpy(acao[10][5],"r5");
    strcpy(acao[10][6],"0");
    strcpy(acao[10][7],"r5");
    strcpy(acao[11][0],"r6");
    strcpy(acao[11][1],"r6");
    strcpy(acao[11][2],"r6");
    strcpy(acao[11][3],"r6");
    strcpy(acao[11][4],"0");
    strcpy(acao[11][5],"r6");
    strcpy(acao[11][6],"0");
    strcpy(acao[11][7],"r6");
    strcpy(acao[12][0],"0");
    strcpy(acao[12][1],"0");
    strcpy(acao[12][2],"0");
    strcpy(acao[12][3],"0");
    strcpy(acao[12][4],"s12");
    strcpy(acao[12][5],"0");
    strcpy(acao[12][6],"s15");
    strcpy(acao[12][7],"0");
    strcpy(acao[13][0],"s2");
    strcpy(acao[13][1],"s4");
    strcpy(acao[13][2],"0");
    strcpy(acao[13][3],"0");
    strcpy(acao[13][4],"0");
    strcpy(acao[13][5],"s14");
    strcpy(acao[13][6],"0");
    strcpy(acao[13][7],"0");
    strcpy(acao[14][0],"r7");
    strcpy(acao[14][1],"r7");
    strcpy(acao[14][2],"r7");
    strcpy(acao[14][3],"r7");
    strcpy(acao[14][4],"0");
    strcpy(acao[14][5],"r7");
    strcpy(acao[14][6],"0");
    strcpy(acao[14][7],"r7");
    strcpy(acao[15][0],"r8");
    strcpy(acao[15][1],"r8");
    strcpy(acao[15][2],"r8");
    strcpy(acao[15][3],"r8");
    strcpy(acao[15][4],"0");
    strcpy(acao[15][5],"r8");
    strcpy(acao[15][6],"0");
    strcpy(acao[15][7],"r8");
}

//-------------------------------------------------------------------------------------------------------------------

/* Gera a matriz desvio */

void geradesvio(int desvio[][3]){
    desvio[0][0] = 1;
    desvio[0][1] = 6;
    desvio[0][2] = 11;
    desvio[1][0] = 0;
    desvio[1][1] = 0;
    desvio[1][2] = 0;
    desvio[2][0] = 0;
    desvio[2][1] = 3;
    desvio[2][2] = 11;
    desvio[3][0] = 0;
    desvio[3][1] = 0;
    desvio[3][2] = 0;
    desvio[4][0] = 0;
    desvio[4][1] = 5;
    desvio[4][2] = 11;
    desvio[5][0] = 0;
    desvio[5][1] = 0;
    desvio[5][2] = 0;
    desvio[6][0] = 0;
    desvio[6][1] = 0;
    desvio[6][2] = 0;
    desvio[7][0] = 0;
    desvio[7][1] = 0;
    desvio[7][2] = 8;
    desvio[8][0] = 0;
    desvio[8][1] = 0;
    desvio[8][2] = 0;
    desvio[9][0] = 0;
    desvio[9][1] = 0;
    desvio[9][2] = 10;
    desvio[10][0] = 0;
    desvio[10][1] = 0;
    desvio[10][2] = 0;
    desvio[11][0] = 0;
    desvio[11][1] = 0;
    desvio[11][2] = 0;
    desvio[12][0] = 13;
    desvio[12][1] = 6;
    desvio[12][2] = 11;
    desvio[13][0] = 0;
    desvio[13][1] = 0;
    desvio[13][2] = 0;
    desvio[14][0] = 0;
    desvio[14][1] = 0;
    desvio[14][2] = 0;
    desvio[15][0] = 0;
    desvio[15][1] = 0;
    desvio[15][2] = 0;
}

//-------------------------------------------------------------------------------------------------------------------

/* Verifica se a palavra é aceita */

void verifica(char exp[],node *PILHA,char gramatica[][7],char acao[][8][4], int desvio[][3]){
    int i = 0, para = 0, erro = 0, tam_gramatica = 0;

    node *tmp, *antigo_topo;
    tmp = PILHA->topo;

    for(i = 0; i < strlen(exp);i++){
        para = 0;
        while(para == 0){
            if(acao[tmp->topo][convertexp(exp[i])][0] == 's'){
                push(PILHA,separa(acao[tmp->topo][convertexp(exp[i])]));
                printf("\n-----EMPILHAR-----\n");
                printf("Topo da Pilha: %d  \n",tmp->topo);
                printf("Valor da Expressao: %c  \n",exp[i]);
                printf("Empilha: %s  \n",acao[tmp->topo][convertexp(exp[i])]);
                printf("\n");
                exibe(PILHA);
                printf("\n");
                tmp = PILHA->topo;
                para = 1;
            } else if(acao[tmp->topo][convertexp(exp[i])][0] == 'r'){
                antigo_topo = tmp;
                printf("\n-----REDUZIR-----\n");
                printf("Topo da Pilha: %d  \n",tmp->topo);
                printf("Valor da Expressao: %c  \n",exp[i]);
                printf("Empilha: %s  \n",acao[tmp->topo][convertexp(exp[i])]);
                printf("\n");
                exibe(PILHA);
                printf("\n");
                tam_gramatica = (strlen(gramatica[separa(acao[tmp->topo][convertexp(exp[i])])]) - 3);
                while(tam_gramatica > 0){
                    printf("\n\nSaiu:%d\n\n",tmp->topo);
                    pop(PILHA);
                    tmp = PILHA->topo;
                    tam_gramatica--;
                }
                printf("Topo da Pilha: %d  \n",tmp->topo);
                printf("Valor da Gramatica: %c  \n",gramatica[separa(acao[antigo_topo->topo][convertexp(exp[i])])][0]);
                printf("\nEmpilha: %d\n",desvio[tmp->topo][convertpilha(gramatica[separa(acao[antigo_topo->topo][convertexp(exp[i])])][0])]);
                printf("\n");
                exibe(PILHA);
                printf("\n");
                push(PILHA,desvio[tmp->topo][convertpilha(gramatica[separa(acao[antigo_topo->topo][convertexp(exp[i])])][0])]);
                tmp = PILHA->topo;
            } else if (acao[tmp->topo][convertexp(exp[i])][0] == 'a'){
                printf("\n-----FIM-----\n");
                printf("Topo da Pilha: %d  \n",tmp->topo);
                printf("Valor da Expressao: %c  \n",exp[i]);
                printf("\n");
                exibe(PILHA);
                printf("\n");
                printf("Expressao aceita!!!\n");
                break;
            } else {
                erro = 1;
                printf("Expressao nao aceita!!!\n");
                break;
            }
        }
        if(erro == 1){
            break;
        }
    }
}
