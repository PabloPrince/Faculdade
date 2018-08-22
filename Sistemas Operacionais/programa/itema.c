#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <time.h>

#define THREADS_MAX     100 //Modificando essa variavel aumenta a quantidade de filhos.

void *filho(int n) //Função de geração de filhos.
{
    printf("Ola do filho %d!\n", n);
    int i, loops = 1000000000;
    for(i = 0; i < loops; i++); /*loop para demorar o nascimento dos filhos, por causa da demora o tchau do filho
    fica para ser empreso na tela após a execução de todos os ola do filho.*/
    printf("Tchau do filho %d!\n", n);
    pthread_exit(NULL);
}


int main(void)
{
    printf("Ola do Pai!\n");
    pthread_t threads[THREADS_MAX];
    int thread_args[THREADS_MAX];
    int i;
    for (i = 0; i < THREADS_MAX; i++)
    {
        thread_args[i] = i;
        pthread_create(&threads[i], NULL, filho, (i) &thread_args[i]);
    }
    for (i = 0; i < THREADS_MAX; i++)
    {
        pthread_join(threads[i], NULL);
    }
    printf("Tchau do Pai!"); //Apenas no final de todas as empressões é que sera creditado o tchau do pai.
    return EXIT_SUCCESS;
}

/* Não houve muita dificuldade na resolução dessa questão, apenas um pequeno problema em onde criaria todos os filhos, mas depois que
descobri ficou facil de entender como criar uma grande quantidade e manipular sua criação tanto do ola do filho quanto do tchau do filho.*/
