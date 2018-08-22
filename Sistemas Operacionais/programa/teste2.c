#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <time.h>

#define THREADS_MAX     4

int valor = 0;

void *produtor(void *param)
{
    //srand( (unsigned)time(NULL) );
    int id = *((int *)(param));
    int i, loops = 1000000;
    for(i = 0; i < loops; i++)
    {
        if (valor == 0) {
            valor = rand() % 100;
            printf("produtor %d: produziu %d\n", id, valor);
        }
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
        if (valor != 0) {
            printf("consumidor %d: consumiu %d\n", id, valor);
            valor = 0;
        }
    }
    pthread_exit(NULL);
}

int main(void)
{
    pthread_t threads[THREADS_MAX];
    int thread_args[THREADS_MAX];
    int i;
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
    return EXIT_SUCCESS;
}
