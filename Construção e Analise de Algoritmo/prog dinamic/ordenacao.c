#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>

int main(){
  int i, n, trocas = 0, j, tmp, rep = 0;  
  do{
    printf ("Digite o tamanho do vetor n\n");
    scanf ("%d", &n);
  }while (n<1);
  int vet[n];
  srand(time(NULL));
  for(i = 0; i < n; i++)
    vet[i] = rand() % 10;
  for (i = 0; i < n; i++)
    printf ("%d ", vet[i]);
  for(i = 1; i < n; i++){
    tmp = vet[i];
    for(j = i-1; j >= 0 && tmp < vet[j] && (!(tmp % 2)); j--){
      vet[j+1] = vet[j];
      trocas++;
		}
    vet[j+1] = tmp;
    rep++;
  }
  printf ("\n");
  for (i = 0; i < n; i++)
    printf ("%d ", vet[i]);

  return 0;
}
