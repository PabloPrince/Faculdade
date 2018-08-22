/*
Descrição: Este programa serve para dizer o dia da semana. 
Data: 24/09/2014
Autor: Maxwell Alves
*/
#include <stdio.h>

void mes(int m){
	
	switch(m){
		case 1:
			printf("Janeiro.");
		break;
		case 2:
			printf("Fevereiro.");
		break;
		case 3:
			printf("Marco.");
		break;
		case 4:
			printf("Abril.");
		break;
		case 5:
			printf("Maio.");
		break;
		case 6:
			printf("Junho.");
		break;
		case 7:
			printf("Julho.");
		break;
		case 8:
			printf("Agosto.");
		break;
		case 9:
			printf("Setembro.");
		break;
		case 10:
			printf("Outubro.");
		break;
		case 11:
			printf("Novembro.");
		break;
		case 12:
			printf("Dezembro.");
		break;
		default:
			printf("ERRO.");
		break;
	}
}

int main(){
	int a;
	printf("Digite um numero de 1 a 12: ");
	scanf("%d", &a);
	
	mes(a);
	
return 0;	
}
