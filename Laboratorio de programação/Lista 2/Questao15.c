/*
Descrição: E uma função que retorne a somatória de todos os números múltiplos de 3 e 5, mas que não são múltiplos de 2, entre 1 e 1000.
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

int multctnd(int i, int d, float t, float c){
	
	float s;
	int p;
	
	for(i = 1; i <= 1000;i++){
		
		if((i % 2) != 0){
			
			if((i % 3) == 0){
				t = t + i;
			}
				if((i % 5) == 0){
				c = c + i;
				}
		}
	}
	s = t + c;
	p = (int) s;
	
return p;	
}

int main(){
	
	int x, y;
	float z, w;
	
	printf("A somatoria  dos multiplos de 3, 5 e: %d \n", multctnd(x,y,z,w));
	
return 0;	
}
