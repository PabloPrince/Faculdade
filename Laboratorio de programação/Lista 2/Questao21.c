/*
Descrição: nao ta pronta
Autor: Maxwell Alves Teixeira
Data:27/01/2015
*/
#include <stdio.h>

void tflo(int n){
	
	int i, c;
	
	for(c = 0; c <= n; c++){
		for(i = 0; i < c; i++){
			printf("%d ", i + c);
		}
		printf("\n");
	}
}

int main(){
	
	int x;
	
	printf("Digite um numero: ");
	scanf("%d", &x);
	
	tflo(x);
	
return 0;	
}
