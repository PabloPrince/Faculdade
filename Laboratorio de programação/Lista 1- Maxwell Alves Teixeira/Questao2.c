/*
Descri��o: � uma fun��o que recebe o ano de nascimento de uma pessoa e o ano atual. A fun��o retorna a idade da pessoa.
Data: 24/09/2014
Autor: Maxwell Alves
*/
#include <stdio.h>

int idade(int a, int b){
	return b-a;
}

int main(){
	int x, y;
	printf("Digite o ano em que voc� nasceu: ");
	scanf("%d", &x);
	printf("Digite o ano atual: ");
	scanf("%d", &y);
	printf("Sua idade e: %d Anos.", idade(x,y));
return 0;	
}
