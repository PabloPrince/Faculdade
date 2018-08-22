/*
Descrição: Este programa serve para dizer se um ano é bissexto ou não. 
Data: 24/09/2014
Autor: Maxwell Alves
*/
#include <stdio.h>

int bis(int b){
	
	if ((b % 400) == 0){
		return 1;
	}
	
	else if  (((b % 4) == 0) && ((b % 100) != 0)){
		return 1;
	}
	
	else{
		return 0;
	}
return 0;	
}

int main(){
	int x;
	printf("Digite o ano: ");
	scanf("%d", &x);
	
	if (bis(x)){
		printf("Ano Bissexto.");
	}
	
	else{
		printf("Ano nao Bissexto.");
	}
}
