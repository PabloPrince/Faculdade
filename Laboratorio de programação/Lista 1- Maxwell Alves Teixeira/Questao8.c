/*
Descrição: É uma função que receba um número de três dígitos e retorne o número invertido. 
Data: 24/09/2014
Autor: Maxwell Alves
*/
#include <stdio.h>

void invert(int n1){
	int n2, n3, n4;
	
	if(n1>10){
	  n2 = (n1 % 10);
	  n1 = (n1 / 10);
	  n3 = (n1 % 10);
	  n1 = (n1 / 10);
	  n4 = (n1 % 10);
	}
	   
  printf("%d%d%d\n\n", n2,n3,n4);
}

int main(){

  int n1;
  
  printf("Digite um numero de 3 digitos: ");
  scanf("%d", &n1);
  
  invert(n1);
  	
  return 0;
}
