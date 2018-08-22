/*
Descrição: nao ta pronta
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

void divisao(int a,int b){
	int i;
	
	for( i = 0; i < b; i++){
		a = a - b;
	}
	
printf("O resultado da divisao e: %d ", i);
printf("\n");
printf("O resto e: %d ", a);		

}

int main(){
	int x,y;
	
	do{
	printf("Digite um numero: ");
	scanf("%d", &x);
	printf("Digite outro numero: ");
	scanf("%d", &y);
	} while(x < y);

	divisao(x,y);
		
return 0;	
}
