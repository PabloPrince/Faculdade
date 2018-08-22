/*
Descrição:E uma função que recebe dois números inteiros e retorne a multiplicação destes números sem usar o operador da multiplicação.
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

int mult(int a,int b){
	int i, s;

	for (i = 0; i < b; i++){
		s = s+a;
	} 
	
return s;	
}

int main(){
	int x,y;
	
	printf("Digite um numero: ");
	scanf("%d", &x);
	printf("Digite outro numero: ");
	scanf("%d", &y);
	
	printf("A multiplicaçao e: %d", mult(x,y));
	
return 0;	
}
