/*
Descrição: E uma função que calcule e retorne quantos múltiplos de 2, 3 e 5 existem entre 1 e 1000.
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

void multdtc(int i, int d, int t, float c){
	
	for(i = 1; i <= 1000;i++){
		
		if((i % 2) == 0){
			d = d + 1;
		}
			if((i % 3) == 0){
				t = t + 1;
			}
				if((i % 5) == 0){
					c = c + 1;
				}
	}
	
	printf("A quantidade  de multiplos de 2 e: %d \n", d);
	printf("A quantidade  de multiplos de 3 e: %d \n", t);
	printf("A quantidade  de multiplos de 5 e: %.0f \n", c);
	
}

int main(){
	
	int x, y, z;
	float w;
	
	multdtc(x,y,z,w);
	
return 0;	
}
