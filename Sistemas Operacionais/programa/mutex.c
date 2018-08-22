#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

pthread_mutex_t mutex;

int g_ant = 0;

void *writeloop(void *arg) {
    while(g_ant < 10) {
        pthread_mutex_lock(&mutex);
        g_ant++;
        usleep(rand()%10);
        printf("%d\n", g_ant);
        pthread_mutex_unlock(&mutex);
    }
    exit(0);
}

int main(void)
{
    pthread_t tid;
    pthread_mutex_init(&mutex, NULL);
    pthread_create(&tid, NULL, writeloop, NULL);
    writeloop(NULL);
    pthread_join(tid, NULL);
    pthread_mutex_destroy(&mutex);
    return 0;
}
