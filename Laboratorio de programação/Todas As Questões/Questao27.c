#include <stdio.h>
#include <stdlib.h>
#include <time.h>
NAO ESTA TERMINADA//
int main(){
	int k, n, i;
	
	printf("Digite o tamanho do vetor: ");
	scanf("%d", &n);
	
	int v[n];
	
	srand(time(NULL));
	
	for(i = 0; i < n; i++){
		k = rand() % n;
		
		if (((k % 2) == 0){
				v[i] = k;
		}
		else{
			if ((i % 2) == 0)){
				v[i] = k;
			}
		}
	}
		for(i = 0; i < n; i++){
			printf("%d ", v[i]);	
		}
		
return 0;		
}
