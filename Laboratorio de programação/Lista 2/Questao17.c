/*
Descri��o: E uma fun��o que recebe um n�mero n inteiro, calcule e retorne a soma de todos os divisores desse n�mero, com exce��o dele pr�prio.
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

int somdi(int n){
	
	int i, s;
	
	for (i = 1; i < n; i++){
		
		if((n % i) == 0){
			s = s + i;
		}
	}
	
return s;	
}

int main(){
	
	int x;
	
	printf("Digite um numero: ");
	scanf("%d", &x);
	
	printf("A soma dos divisores e: %d ", somdi(x));
	
return 0;	
}
