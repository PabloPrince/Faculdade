/*
Descri��o: E uma fun��o que recebe um n�mero inteiro e retorna verdadeiro se ele for primo, caso contr�rio, retorne falso.
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

int primo(int a){
	
	int i, s;
	
	for(i = 1; i <= a; i++){
		
		if( (a % i) == 0){
			s = s + 1;
		}
	}
	
	if(s == 2){
		return 1;
	}
		else{
			return 0;
		}
}

int main(){
	
	int x;
	
	printf("Digite um numero: ");
	scanf("%d", &x);
	
	if(primo(x)){
		printf("Verdadeiro");
	}
		else{
			printf("Falso");
		}

return 0;		
}
