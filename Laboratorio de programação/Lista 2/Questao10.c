/*
Descri��o:E uma fun��o que recebe dois n�meros inteiros e retorne a multiplica��o destes n�meros sem usar o operador da multiplica��o.
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
	
	printf("A multiplica�ao e: %d", mult(x,y));
	
return 0;	
}
