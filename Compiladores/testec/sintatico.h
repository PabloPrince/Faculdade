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

    if(exp == 'n'){
        return 0;
    } else if(exp == '+'){
        return 1;
    } else if(exp == '*'){
        return 2;
    } else if(exp == '('){
        return 3;
    } else if(exp == ')'){
        return 4;
    } else if(exp == '$'){
        return 5;
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
    strcpy(gramatica[2],"E->T");
    strcpy(gramatica[3],"T->T*F");
    strcpy(gramatica[4],"T->F");
    strcpy(gramatica[5],"F->(E)");
    strcpy(gramatica[6],"F->n");
}

//-------------------------------------------------------------------------------------------------------------------

/* Gera a matriz ação */

void geraacao(char acao[][6][4]){
    strcpy(acao[0][0],"s5");
    strcpy(acao[0][1],"0");
    strcpy(acao[0][2],"0");
    strcpy(acao[0][3],"s4");
    strcpy(acao[0][4],"0");
    strcpy(acao[0][5],"0");
    strcpy(acao[1][0],"0");
    strcpy(acao[1][1],"s6");
    strcpy(acao[1][2],"0");
    strcpy(acao[1][3],"0");
    strcpy(acao[1][4],"0");
    strcpy(acao[1][5],"a");
    strcpy(acao[2][0],"0");
    strcpy(acao[2][1],"r2");
    strcpy(acao[2][2],"s7");
    strcpy(acao[2][3],"0");
    strcpy(acao[2][4],"r2");
    strcpy(acao[2][5],"r2");
    strcpy(acao[3][0],"0");
    strcpy(acao[3][1],"r4");
    strcpy(acao[3][2],"r4");
    strcpy(acao[3][3],"0");
    strcpy(acao[3][4],"r4");
    strcpy(acao[3][5],"r4");
    strcpy(acao[4][0],"s5");
    strcpy(acao[4][1],"0");
    strcpy(acao[4][2],"0");
    strcpy(acao[4][3],"s4");
    strcpy(acao[4][4],"0");
    strcpy(acao[4][5],"0");
    strcpy(acao[5][0],"0");
    strcpy(acao[5][1],"r6");
    strcpy(acao[5][2],"r6");
    strcpy(acao[5][3],"0");
    strcpy(acao[5][4],"r6");
    strcpy(acao[5][5],"r6");
    strcpy(acao[6][0],"s5");
    strcpy(acao[6][1],"0");
    strcpy(acao[6][2],"0");
    strcpy(acao[6][3],"s4");
    strcpy(acao[6][4],"0");
    strcpy(acao[6][5],"0");
    strcpy(acao[7][0],"s5");
    strcpy(acao[7][1],"0");
    strcpy(acao[7][2],"0");
    strcpy(acao[7][3],"s4");
    strcpy(acao[7][4],"0");
    strcpy(acao[7][5],"0");
    strcpy(acao[8][0],"0");
    strcpy(acao[8][1],"s6");
    strcpy(acao[8][2],"0");
    strcpy(acao[8][3],"0");
    strcpy(acao[8][4],"s11");
    strcpy(acao[8][5],"0");
    strcpy(acao[9][0],"0");
    strcpy(acao[9][1],"r1");
    strcpy(acao[9][2],"s7");
    strcpy(acao[9][3],"0");
    strcpy(acao[9][4],"r1");
    strcpy(acao[9][5],"r1");
    strcpy(acao[10][0],"0");
    strcpy(acao[10][1],"r3");
    strcpy(acao[10][2],"r3");
    strcpy(acao[10][3],"0");
    strcpy(acao[10][4],"r3");
    strcpy(acao[10][5],"r3");
    strcpy(acao[11][0],"0");
    strcpy(acao[11][1],"r5");
    strcpy(acao[11][2],"r5");
    strcpy(acao[11][3],"0");
    strcpy(acao[11][4],"r5");
    strcpy(acao[11][5],"r5");
}

//-------------------------------------------------------------------------------------------------------------------

/* Gera a matriz desvio */

void geradesvio(int desvio[][3]){
    desvio[0][0] = 1;
    desvio[0][1] = 2;
    desvio[0][2] = 3;
    desvio[1][0] = 0;
    desvio[1][1] = 0;
    desvio[1][2] = 0;
    desvio[2][0] = 0;
    desvio[2][1] = 0;
    desvio[2][2] = 0;
    desvio[3][0] = 0;
    desvio[3][1] = 0;
    desvio[3][2] = 0;
    desvio[4][0] = 8;
    desvio[4][1] = 2;
    desvio[4][2] = 3;
    desvio[5][0] = 0;
    desvio[5][1] = 0;
    desvio[5][2] = 0;
    desvio[6][0] = 0;
    desvio[6][1] = 9;
    desvio[6][2] = 3;
    desvio[7][0] = 0;
    desvio[7][1] = 0;
    desvio[7][2] = 10;
    desvio[8][0] = 0;
    desvio[8][1] = 0;
    desvio[8][2] = 0;
    desvio[9][0] = 0;
    desvio[9][1] = 0;
    desvio[9][2] = 0;
    desvio[10][0] = 0;
    desvio[10][1] = 0;
    desvio[10][2] = 0;
    desvio[11][0] = 0;
    desvio[11][1] = 0;
    desvio[11][2] = 0;
}

//-------------------------------------------------------------------------------------------------------------------

/* Verifica se a palavra é aceita */

void verifica(char exp[],node *PILHA,char gramatica[][7],char acao[][6][4], int desvio[][3]){
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
