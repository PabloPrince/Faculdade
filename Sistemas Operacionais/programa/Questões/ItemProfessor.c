//
//  main.c
//  ProgConcorrente
//
//  Created by Walisson on 17/11/15.
//  Copyright © 2015 Walisson. All rights reserved.
//

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

/*
=== Saída do código ao executá-lo aqui ===

pré execução
meio da execução
produtor 0: produziu 7
consumidor 1: consumiu 7
produtor 0: produziu 89
consumidor 1: consumiu 89
consumidor 3: consumiu 89
consumidor 1: consumiu 89
produtor 2: produziu 89
produtor 2: produziu 62
consumidor 1: consumiu 62
produtor 2: produziu 39
consumidor 1: consumiu 39
consumidor 3: consumiu 39
consumidor 1: consumiu 73
produtor 2: produziu 73
produtor 2: produziu 72
consumidor 3: consumiu 72
consumidor 1: consumiu 72
consumidor 3: consumiu 29
produtor 2: produziu 29
produtor 2: produziu 56
consumidor 1: consumiu 56
pós-execução
Program ended with exit code: 0

=== Você consegue responder? ===
Por que o consumidor 1 consumiu duas vezes o número 89?
Resposta: Como não a um bloqueador de processo como o mutex ou semaforo, as vezes um processo acaba tendo acesso a variavel compartilhada sem
que o outro tenha alterado corretamente seu valor.
Por que tanto o consumidor 1 e 3 consumiram o número 39? (caso similar com o número 72)?
Resposta: Sem esse sistema bloqueante a variavel compartilhada fica solta podendo ser usada tanto pelo consumidor quanto pelo produtor paralelamente
fazendo com que o consumidor 1 consuma 39, mas antes dele zera a variavel compartilhada o consumidor 3 adquiri os mesmos 39.
Por que o consumidor 3 consumiu o número 29, mas o produtor 2 só o produziu depois?
Resposta: Como os processos estão soltos nesse periodo de execução, o consumidor 3 consumio o 29 antes de o produtor enviar para a tela o printf com
os valores alterados.
Tirando o fato de ser gerado números aleatórios, por que a execução sempre ocorre em ordem diferente?
Resposta: Como ja havia falado mais acima, sem um sistema bloqueante ou que emponha alguma ordem sobre a execução concorrente dos processos, eles
em si vão executar de forma aleatoria a partir da sua criação ate a sua destruição.
*/
