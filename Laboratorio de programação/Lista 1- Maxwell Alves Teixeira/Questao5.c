/*
Descrição: Este programa serve para dizer se uma data é valida ou não. 
Data: 24/09/2014
Autor: Maxwell Alves
*/
#include <stdio.h>

void data(int d, int m, int a){
	
	if ((a % 400) == 0){
		
		if ((((m >= 1) && (m <= 12)) && m != 2) && ((d >= 1) && (d <= 30))){
				printf("Data valida.");
		}
		
		else if ((m == 2) && ((d >= 1) && (d <= 29))){
				printf("Data valida.");
		}
		
		else{	
			printf("Data invalida.");
		}
	}
	
	else if  (((a % 4) == 0) && ((a % 100) != 0)){
		
		if (((m >= 1 && m <= 12) && m != 2) && (d >= 1 && d <= 30)){
				printf("Data valida.");
		}
		
		else if ((m == 2) && (d >= 1 && d <= 29)){
				printf("Data valida.");
		}
		
		else{	
			printf("Data invalida.");
		}
	}
	
	else{
		
		if (((m >= 1 && m <= 12) && m != 2) && (d >= 1 && d <= 30)){
				printf("Data valida.");
		}
		
		else if ((m == 2) && (d >= 1 && d <= 28)){
				printf("Data valida.");
		}
		
		else{	
			printf("Data invalida.");
		}
		
	}	
}

int main(){
	int d, m, a;
	printf("Digite o dia: ");
	scanf("%d", &d);
	printf("Digite o mes: ");
	scanf("%d", &m);
	printf("Digite o ano: ");
	scanf("%d", &a);
	
	data(d,m,a);
		
return 0;	
}
