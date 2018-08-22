/*
Descrição: É uma função que receba um número de seis dígitos e retorna true se o numero for palíndromo. Caso contrario, retorna false.
Data: 24/09/2014
Autor: Maxwell Alves
*/
#include <stdio.h>

int pol(int n1){
	int n2, n3, n4, n5, n6, n7;
	
	if(n1>10){
	  n2 = (n1 % 10);
	  n1 = (n1 / 10);
	  n3 = (n1 % 10);
	  n1 = (n1 / 10);
	  n4 = (n1 % 10);
	  n1 = (n1 / 10);
	  n5 = (n1 % 10);
	  n1 = (n1 / 10);
	  n6 = (n1 % 10);
	  n1 = (n1 / 10);
	  n7 = (n1 % 10);
	}
	
	if ((n2 == n7) && (n3 == n6) && (n4 == n5)){
		return 1;
	}
	
return 0;
}

int main(){

  int n1;
  
  printf("Digite um numero de 6 digitos: ");
  scanf("%d", &n1);
  	
	if (pol(n1)){
		printf("E polindromo.");
	}
	
	else{
		printf("Nao e polindromo");
	}
  	
  return 0;
}
