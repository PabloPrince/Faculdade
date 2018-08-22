/*
Descrição: E um programa que mostra uma contagem na tela de 233 a 456. Quando os números estivem entre 300 e 400, conte de 3 em 3. Quando não estiver, conte de 5 em 5.
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

int main(){
	
	int i;
	
	for(i = 233;i <= 456;i++ ){
		
		if((i >= 300) && (i <=400)){
			i = i + 2;
			printf("%d ",i);
		}
		else{
			i = i + 4;
			printf("%d ",i);
		}
	}
return 0;	
}
