#include<stdio.h>
#include<stdlib.h>
#include<semaphore.h>
#include<pthread.h>
#define N 5
#define PENSAR 0 // definindo se esta com fome ou não
#define FOME 1 // filosofo esta com fome
#define COMER 2 //filosofo pode comer
#define ESQUERDA (nfilosofo+4)%N //agarrar garfo
                                 //da esquerda
#define DIREITA (nfilosofo+1)%N  //agarrar garfo
                                 //da direita
void *filosofo(void *num); // função que checa se ele agarra ou solta o garfo
void agarraGarfo(int); // função que testa se o garfo esta disponivel e atribui para o filosofo
void deixaGarfo(int); // função que testa se o garfo da direita ou esquerda não esta sendo utilizado e libera
void testar(int); // testa se o filosofo esta com fome e se tiver, observa se tem garfos para ele utilizar e se tiver ele come

sem_t mutex; // declaração do semáforo mutex
sem_t S[N]; //declaração do semáforo dos filosofos
int estado[N]; // estado do filosofo, se ele esta pensando, com fome ou comendo
int nfilosofo[N]={0,1,2,3,4}; //número de filosofos, exemplo: filosofo 0

void *filosofo(void *num)
{
   while(1) // faz com que o filosofo agarre ou deixe o garfo
   {
      int *i = num;
      sleep(1);
      agarraGarfo(*i); // testa se o filosofo i pode agarrar o garfo, se sim ele agarra se não ele aguarda o garfo ficar disponivel
      sleep(1);
      deixaGarfo(*i); // testa se o filosofo i pode deixar o garfo, se sim ele deixa se não o solicitante aguarda
   }
}

void agarraGarfo(int nfilosofo)
{
   sem_wait(&mutex); // inicia a seção critica do agarra garfo
   estado[nfilosofo] = FOME; // atribui o estado fome ao filosofo
   printf("Filosofo %d tem fome.\n", nfilosofo+1);//+1 para imprimir filosofo 1 e nao filosofo 0
   testar(nfilosofo); // Verifica se ele pode comer ou tem que aguardar por causa da falta de garfo
   sem_post(&mutex);// sai da seção critica do agarrar garfo
   sem_wait(&S[nfilosofo]); // inicia a seção critica da variavel nfilosofo para que outros processos não a usem
   sleep(1);
}

void deixaGarfo(int nfilosofo)
{
   sem_wait(&mutex); // inicia a seção critica do deixa garfo
   estado[nfilosofo]=PENSAR; // atribui o estado pensar ao filosofo
   printf("Filosofo %d deixou os garfos %d e %d.\n", nfilosofo+1, ESQUERDA+1, nfilosofo+1); //filosofo deixa os garfos dele
   printf("Filosofo %d esta a pensar.\n", nfilosofo+1); // filosofo espera pelos proximos garfos
   testar(ESQUERDA); //verifica se o garfo da esquerda esta disponivel
   testar(DIREITA); // verifica se o garfo da direita esta disponivel
   sem_post(&mutex); // sai da seção critica do deixa garfo
}

void testar(int nfilosofo) // testa se o filosofo pode agarrar ou não os garfos para comer
{
   if(estado[nfilosofo]==FOME && estado[ESQUERDA] //verifica se o filosofo esta com fome, se sim, verifica se os garfos da esquerda e da
 !=COMER && estado[DIREITA]!=COMER)               //direita estão disponiveis, se estiver executa o resto
   {
      estado[nfilosofo]=COMER; // filosofo passa a esta comendo
      sleep(2); // aguarda
      printf("Filosofo %d agarrou os garfos %d e %d.\n", nfilosofo+1, ESQUERDA+1, nfilosofo+1); //filosofo pega os seus garfos
      printf("Filosofo %d esta a comer.\n", nfilosofo+1);
      sem_post(&S[nfilosofo]); // variavel nfilosofo é liberada.
   }
}

int main() {
   int i;
   pthread_t thread_id[N]; //identificadores das
                           //threads
   sem_init(&mutex,0,1); //inicialização do semáforo mutex
   for(i=0;i<N;i++)
      sem_init(&S[i],0,0); //inicialização do semáforo dos filosofos
   for(i=0;i<N;i++)
   {
      pthread_create(&thread_id[i], NULL, filosofo, &nfilosofo[i]);//criar as threads
      printf("Filosofo %d esta a pensar.\n",i+1); // aguarda os garfos
   }
   for(i=0;i<N;i++)
   pthread_join(thread_id[i],NULL); //para
                                    //fazer a junção das threads
   return(0);
}

/*
sleep() serve para parar um programa por determinado tempo
sleep(1); //Pausa de 1 sugundo
sleep(2); //2 segundos

    Principais duvidas foram com a parte de agarrar o garfo, mas
  o funcionamento é bem simples.

    Se o garfo da esquerda e nem da direita estiver ocupado e o
  filosofo estiver com fome, ele pode pegar os dois e comer, caso
  algum dos garfos estiver ocupado ou os dois, o filosofo tem que aguardar
  ate que fiquem disponiveis.

    Quando o filosofo come, outro ja esta aguardando o garfo e portanto o que
  estava com os garfos solta e deixa o proximo utilizar, assim por diante.

    Por causa dos semáforos aplicados, alguns dos erros que daria, que seria um
  filosofo pegar um garfo que esta sendo utilizado, este tipo de ação não acontece,
  deixando assim as execuções dos processos corretas.
*/
