/*
Descrição: nao ta pronta
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

int primo(){
	
	int i, s, c, p, k;
	
	for(c = 1; c <= 10000; c++){
		
		for(i = 1; i <= c; i++){
		
			if( (c % i) == 0){
				s = s + 1;
			}
		}
			if(s == 2){
				k = k + 1;
			}
				if (k == 500){
					p = c;
				}
	}
	
return p;	
}

int main(){
	
	printf("O 500º numero primo e: %d",primo);

return 0;		
}
