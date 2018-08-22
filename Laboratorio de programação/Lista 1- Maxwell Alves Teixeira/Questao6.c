/*
Descrição: Este programa serve para dizer o dia da semana. 
Data: 24/09/2014
Autor: Maxwell Alves
*/
#include <stdio.h>

void dia(int d){
	
	switch(d){
		case 1:
			printf("Domingo.");
		break;
		case 2:
			printf("Segunda-Feira.");
		break;
		case 3:
			printf("Terca-Feira.");
		break;
		case 4:
			printf("Quarta-Feira.");
		break;
		case 5:
			printf("Quinta-Feira.");
		break;
		case 6:
			printf("Sexta-Feira.");
		break;
		case 7:
			printf("Sabado.");
		break;
		default:
			printf("Dia invalido.");
		break;
	}
}

int main(){
	int x;
	printf("Digite um numero de 1 a 7: ");
	scanf("%d", &x);
	
	dia(x);
	
return 0;	
}
