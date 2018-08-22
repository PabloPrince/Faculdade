/*
Descrição: É uma função que receba a idade e o tempo de serviço de um trabalhador. A função retorna true se ele pode se aposentar. 
Data: 24/09/2014
Autor: Maxwell Alves
*/
#include <stdio.h>

int aposentado(int id, int tp){
	
	if ((id >= 65) || (tp >= 30 ) || ((id >= 60) && (tp >= 25))){
		return 1;
	}
	
	else{
		return 0;
	}
	
return 0;	
}

int main(){
	int i,t;
	printf("Digite sua idade: ");
	scanf("%d", &i);
	printf("Digite suas horas trabalhadas: ");
	scanf("%d", &t);
	
	if(aposentado(i, t)){
		printf("Pode se aposentar.");
	}
	
	else{
		printf("Nao pode se aposentar.");
	}
}
