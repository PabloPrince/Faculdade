/*
Descri��o: � uma fun��o que receba dois n�meros inteiros. A fun��o retorna o maior n�mero.
Data: 24/09/2014
Autor: Maxwell Alves
*/
#include <stdio.h>

void maior(int a, int b){
	
	if (a > b){
		printf("O maior e: %d", a);
	}
	
	else if (a < b){
		printf("O maior e: %d", b);
	}
	
	else if (a == b){
		printf("Sao iguais");
	}	
}

int main(){
	int x, y;
	printf("Digite o primeiro valor: ");
	scanf("%d", &x);
	printf("Digite o segundo valor: ");
	scanf("%d", &y);
	
	maior(x,y);
return 0;	
}
