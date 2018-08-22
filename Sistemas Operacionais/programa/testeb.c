#include <stdio.h>
#include <stdlib.h>
#include<semaphore.h> // biblioteca para uso de semaforos e mutex.
#include<pthread.h>
#include <time.h>

#define THREADS_MAX     4
#define tam     2 //Tamanho do vetor valor.

int valor[tam] = {0}; //Vetor de variaveis compartilhadas.
int c = 0;

pthread_mutex_t mutex; //Habilitando o uso do mutex da biblioteca semaphore, comandos como lock e unlock.

void *produtor(void *param)
{
    //srand( (unsigned)time(NULL) );
    int id = *((int *)(param));
    int i, loops = 1000000;
    pthread_mutex_lock(&mutex); //Inicio da seção critica da função produtor, bloqueia a variavel compartilhada para uso exclusivo.
    for(i = 0; i < loops; i++)
    {
        for(c = 0; c < tam; c++) { //Produz valores aleátorios para o vetor.
          if (valor[c] == 0) {
              valor[c] = rand() % 100;
              printf("produtor %d: produziu %d\n", id, valor[c]);
          }
        }
    }
    printf("Dorme consumidor\n");
    sleep(1); //Consumidor aguarda 1 milisegundo para executar novamente uma requisição da variavel compartilhada.
    pthread_mutex_unlock(&mutex); // Final da seção critica da função produtor e liberação da variavel compartilhada.
    pthread_exit(NULL);
}

void *consumidor(void *param)
{
    srand( (unsigned)time(NULL) );
    int id = *((int *)(param));
    int i, loops = 1000000000;
    pthread_mutex_lock(&mutex); //Inicio da seção critica da função produtor, bloqueia a variavel compartilhada para uso exclusivo.
    for(i = 0; i < loops; i++)
    {
        for(c = 0; c < tam; c++) { //Consome os valores aleátorios do vetor.
          if (valor[c] != 0) {
              printf("consumidor %d: consumiu %d\n", id, valor[c]);
              valor[c] = 0;
          }
        }
    }
    printf("Dorme produtor\n");
    sleep(1); //Produtor aguarda 1 milisegundo para executar novamente uma requisição da variavel compartilhada.
    pthread_mutex_unlock(&mutex); // Final da seção critica da função consumidor e liberação da variavel compartilhada.
    pthread_exit(NULL);
}

int main(void)
{
    pthread_t threads[THREADS_MAX];
    int thread_args[THREADS_MAX];
    int i;
    pthread_mutex_init(&mutex, NULL); //Inicialização do mutex.
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
    pthread_mutex_destroy(&mutex); //Destruição do mutex após o uso do programa.
    return EXIT_SUCCESS;
}

/*As dificuldades encontradas a primeiro momento foi a geração do vetor todo zerado que a minha pessoa não lembrava mais como fazia, mas
após descobrir como se faz, surgiu um novo problema que foi o segment fail, que em certo momento do codigo o vetor ficava sem valor e o consumidor
tentava pegar algo que não existia, mas foi so ajustar os locais corretos do lock e unlock e tudo ficou normal.*/
