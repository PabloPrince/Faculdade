/*
Descrição: E uma função que recebe um valor inteiro N e imprime uma figura
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

void figura(int n){
	
	int i, c;
	
	for(c = 0; c <= n; c++){
		for(i = 0; i < c; i++){
			printf("* ");
		}
		
		printf("\n");
	}
}

int main(){
	
	int x;
	
	printf("Digite um numero: ");
	scanf("%d", &x);
	
	figura(x);
	
return 0;	
}
