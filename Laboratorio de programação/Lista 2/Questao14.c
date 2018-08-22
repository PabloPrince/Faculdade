/*
Descrição: E uma função que calcule e retorne quantos números pares são múltiplos de 3, 5 e 7 ao mesmo tempo, entre 1 e 1000.
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

int multcts(int i, int t){
	
	for(i = 1; i <= 1000;i++){
		
		if((i % 2) == 0){
			
			if(((i % 3) == 0) && ((i % 5) == 0) && ((i % 7) == 0)){
				t = t + 1;
			}
		
		}	
	}
	
return t;
}

int main(){
	
	int x, y;
	
	printf("A quantidade  de multiplos de 3, 5 e 7 ao mesmo tempo que sao pares e: %d \n", multcts(x,y));
	
return 0;	
}
