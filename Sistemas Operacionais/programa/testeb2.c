#include <stdio.h>
#include <stdlib.h>
#include<semaphore.h> // biblioteca para uso de semaforos e mutex.
#include<pthread.h>
#include <time.h>

#define THREADS_MAX     4
#define tam     2 //Tamanho do vetor valor.

int valor[tam] = {0}; //Vetor de variaveis compartilhadas.
int c = 0;
sem_t semP, semC; //Declarando os semafaros.
int stock_count = 0; //contador de estoque.
const int stock_max_limit=5; //quantidade maxima de processos executados.

void *produtor(void *param)
{

    //srand( (unsigned)time(NULL) );
    int id = *((int *)(param));
    int i, loops = 1000000;
    for(i = 0; i < loops; i++)
    {
        while(stock_max_limit == stock_count){ /*Testa se a contagem de processos atingiu o limite, caso não tenha atingido o
                                                produtor entra na sua seção critica e utiliza-se da variavel compartilhada sem restrições.*/
            printf("Estouro de estoque, producao aguardando..\n");
            sem_wait(&semC); //Inicio da seção critica da função produtor, bloqueia a variavel compartilhada para uso exclusivo.
            printf("Operacao de producao continua..\n");
        }

        for(c = 0; c < tam; c++) { //Produz valores aleátorios para o vetor.
          if (valor[c] == 0) {
              valor[c] = rand() % 100;
              printf("produtor %d: produziu %d\n", id, valor[c]);
          }
        }
        sleep(1);   //Consumidor aguarda 1 milisegundo para executar novamente uma requisição da variavel compartilhada.
        stock_count++; //Contador de estoque incrementa.
        sem_post(&semP);// Final da seção critica da função produtor e liberação da variavel compartilhada.
    }
    pthread_exit(NULL);
}

void *consumidor(void *param)
{
    srand( (unsigned)time(NULL) );
    int id = *((int *)(param));
    int i, loops = 1000000000;
    for(i = 0; i < loops; i++)
    {
        while(0 == stock_count){/*Testa se a contagem de processos atingiu a base que é zero, caso não tenha atingido o
                                 consumidor entra na sua seção critica e utiliza-se da variavel compartilhada sem restrições.*/
            printf("estoque vazio, consumidor aguarda..\n");
            sem_wait(&semP); //Inicio da seção critica da função consumidor.
            printf("consumidor continua as operacoes..\n");
        }

        for(c = 0; c < tam; c++) { //Consome os valores aleátorios do vetor.
          if (valor[c] != 0) {
              printf("consumidor %d: consumiu %d\n", id, valor[c]);
              valor[c] = 0;
          }
        }
        sleep(2);   //Produtor aguarda 2 milisegundo para executar novamente uma requisição da variavel compartilhada.
        stock_count--; //Contador de estoque decrementa.
        sem_post(&semC); // Final da seção critica da função consumidor e liberação da variavel compartilhada.
    }
    pthread_exit(NULL);
}

int main(void)
{
    pthread_t threads[THREADS_MAX];
    int thread_args[THREADS_MAX];
    int i;
    sem_init(&semP, 0, 0); //Inicialização do semafaro do produtor.
    sem_init(&semC, 0, 0); //Inicialização do semafaro do consumidor.
    printf("pré execução\n");
    for (i = 0; i < THREADS_MAX; i++)
    {
        thread_args[i] = i;
        pthread_create(&threads[i], NULL, produtor, (void *) &thread_args[i]);
        i++;
        thread_args[i] = i;
        pthread_create(&threads[i], NULL, consumidor, (void *) &thread_args[i]);
    }
    printf("meio da execução\n");

    for (i = 0; i < THREADS_MAX; i++)
    {
        pthread_join(threads[i], NULL);
    }
    printf("pós-execução\n");
    sem_destroy(&semC); // No final do programa os semafaros são destruidos, esse destroi o semafaro do consumidor.
    sem_destroy(&semP); // Esse destroi o semafaro do produtor.
    return EXIT_SUCCESS;
}

/* Uma das maiores dificuldades foi saber como se encaichava as variaveis de stock, que a primeiro momento eu não tinha ideia de como implementa-las
mas depois de um breve estudo consegui constatar seu funcionamento e coloquei em ação o uso dos semafaros, o uso da função sleep() também foi muito
dificil de entender mas depois de alguns testes de mudança de variavel consegui constatar onde ela alterava e como, servia como um atraso para o processo
requisitante, pedindo que ele esperasse um momento para que a variavel compartilhada seja liberada.*/
