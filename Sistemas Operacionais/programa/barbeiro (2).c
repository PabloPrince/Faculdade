#include "stdio.h"
#include "unistd.h"
#include "stdlib.h"
#include "pthread.h"
#include "semaphore.h"

#define CHAIRS 5                // número de cadeiras para os clientes à espera
#define TRUE 1

sem_t customers;                // número de cliente à espera de atendimento
sem_t barbers;                  // número de barbeiros à espera de clientes
sem_t mutex;                    // para exclusão mútua
int waiting = 0;                // clientes que estão esperando (não estão cortando)

/* funções -- Explicação de cada uma delas mais abaixo */
void* barber(void *arg);
void* customer(void *arg);
void cut_hair();
void customer_arrived();
void get_haircut();
void giveup_haircut();

int main() {
sem_init(&customers, TRUE, 0); // inicializando o semaforo dos clientes
sem_init(&barbers, TRUE, 0); // inicializando o semafaro dos barbeiros
sem_init(&mutex, TRUE, 1); // inicializando o semafaro da seção critica

pthread_t b, c;

 /* criando único barbeiro */
 pthread_create(&b, NULL, (void *) barber, NULL);


 /* criação indefinida de clientes */
 while(TRUE) {
pthread_create(&c, NULL, (void *) customer, NULL);
sleep(1);
}

return 0;
}

void* barber(void *arg) {
while(TRUE) {
sem_wait(&customers);   // vai dormir se o número de clientes for 0, o barbeiro aguarda um cliente entrar
sem_wait(&mutex);       // obtém acesso a  variavel compartilhada 'waiting'
waiting = waiting - 1;  //descresce de um o contador de clientes à espera, como em uma fila, quando um cliente sai a fila diminui
sem_post(&barbers);     // um barbeiro está agora pronto para cortar cabelo, aloca o barbeiro para o corte
sem_post(&mutex);       // libera  a variavel compartilhada 'waiting'
cut_hair();             // corta o cabelo (fora da seção crítica)
}

pthread_exit(NULL);
}

void* customer(void *arg) {
sem_wait(&mutex);           // entra na seção crítica

if(waiting < CHAIRS) {      // se não houver cadeiras vazias, não pode chegar novos clientes
customer_arrived();
waiting = waiting + 1;  // incrementa o contador de clientes à espera, aumentando a fila de clientes
sem_post(&customers);   // acorda o barbeiro se necessário, ou seja, caso haja cliente
sem_post(&mutex);       // libera o acesso a variavel compartilhada 'waiting'
sem_wait(&barbers);     // vai dormir se o número de barbeiros livres for 0
get_haircut();          // sentado e sendo servido, o cliente
} else {
sem_post(&mutex);   // a barbearia está cheia; não espera
giveup_haircut();   // desiste do corte

}

pthread_exit(NULL);
}

void cut_hair() {
printf("Barbeiro esta cortando o cabelo de alguem!\n");
sleep(3);
}

void customer_arrived() {
printf("Cliente chegou para cortar cabelo!\n");
}
void get_haircut() {
printf("Cliente esta tendo o cabelo cortado!\n");
}

void giveup_haircut() {
printf("Cliente desistiu! (O salao esta muito cheio!)\n");
}

/*
  Bom, o funcionamento desse algoritmo de barbeiro dorminhoco é bem mais simples que o
jantar dos filosofos, com o intuito apenas de verificar se tem cliente e se tiver o barbeiro
levantar e corta o cabelo desse cliente.
  Explicação resumida do que o programa faz: Enquanto o salão estiver vazio o barbeiro dorme, se chegar
um cliente o barbeiro acorda e vai corta seu cabelo, se continuar chegando clientes enquanto o barbeiro
corta o cabelo do primeiro cliente, esses novos clientes iram ficar esperando nas cadeiras do salão, ou seja,
iram aguarda sua vez em uma fila, ate que o barbeiro termine com o primeiro e passe para o proximo e assim por
diante.
  Uma das dificuldades foi compreender o funcionamento dos semaforos, mas com alguns testes deu para entender seu
funcionamento.
  O interessante desse programa e sobre o funcionamento dos semaforos é a forma que realmente funciona e deixa o programa
bem mais organizado em questão de chamadas de processo, sendo que segue uma logica, facilitando assim o entendimento de quem
procura o mesmo para aprender.
*/
