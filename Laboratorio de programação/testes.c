#include <stdio.h>

int main(){
	
	int x, maior = 0, menor = 0;
	
	do{
		printf("Digite um numero: ");
		scanf("%d", &x);
		
		if(x > maior){
			maior = x;
		}
		else if(x < menor){
			menor = x;
		}
	} while(x >= 0);
	
	printf("O maior numero e: %d \n",maior);
	printf("O menor numero e: %d \n",menor);

return 0;	
}
