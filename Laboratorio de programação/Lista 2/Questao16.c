/*
Descri��o: E uma fun��o que recebe dois n�meros inteiros X e Y. A fun��o calcula e retorna a soma de todos os n�meros pares entre X e Y que n�o s�o divis�veis por n�meros �mpares.
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

int spar(int x, int y){
	
	int maior, menor, i, p;
	float t = 0.0;
	
	if (x > y){
		maior = x;
		menor = y;
	}
		if (x < y){
			maior = y;
			menor = x;
		}
			if(x == y){
				maior = x;
				menor = y;
			}
			
	for ( i = menor; i <= maior; i++){
		
		if( (i % 2) == 0){
			
			if(((i % 3) != 0) && ((i % 5) != 0) && ((i % 7) != 0)){
				t = t + i;
			}
		}	
	}
	p = (int) t;
	
return p;			
}

int main(){
	
	int a, b;
	
	printf("Digite um numero: ");
	scanf("%d", &a);
	printf("Digite outro numero: ");
	scanf("%d", &b);
	
	printf("A soma dos pares nao divisiveis por impares e: %d ", spar(a,b));

return 0;	
}
