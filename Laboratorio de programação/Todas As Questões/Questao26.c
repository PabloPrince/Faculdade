#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
	int n, i;
	
	printf("Digite o tamanho do vetor: ");
	scanf("%d", &n);
	
	int v[n];
	
	srand(time(NULL));
	
	for(i = 0; i < n; i++){
		v[i] = rand() % n * 2;	
	}
		for(i = 0; i < n; i++){
			printf("%d ", v[i]);	
		}
		printf("\n");
			for(i = n - 1; i >= 0; i--){
				printf("%d ", v[i]);	
			}
		
return 0;		
}
