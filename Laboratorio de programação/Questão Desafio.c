#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

int main(){
	
	int i, j;
	int v[30], aux3;
	float m[30], k[30][3], aux;
	char n[30][10], aux2[30][10], nomes[][10] = {"Ana","Bia","Rui","Max","Marcos","Andre","Alex","Maria","Joao","Mateus"};
	
	srand(time(NULL));
	
		for(i = 0; i < 30; i++){
			strcpy(n[i], nomes[rand() % 10]);
			v[i] = 15 + (rand() % 20);
		}
			printf("Tabela inicial!!! \n");
	
			for(i = 0; i < 30; i++){
				for(j = 0; j < 3; j++){
					if(j == 0){
						printf("nome %s = idade %d = notas %.2f ", n[i], v[i], (k[i][j] = rand() % 10));
					}
					else{
						printf("%.2f ", (k[i][j] = rand() % 10));	
					}
					printf(" ");
				}
				printf("\n");
			}
			printf("\n");
			
				for(i = 0; i < 30; i++){
					m[i] = 0;
				}
			
					for(i = 0; i < 30; i++){
						for(j = 0; j < 3; j++){
							m[i] = (m[i] + k[i][j]);
						}
						m[i] = m[i] / 3;
					}
						printf("Tabela Com Medias!!! \n");
					
						for(i = 0; i < 30; i++){
							for(j = 0; j < 3; j++){
								if(j == 0){
									printf("nome %s = idade %d = nota %.2f ", n[i], v[i], m[i]);
								}
								printf(" ");
							}
							printf("\n");
						}
						printf("\n");
						
							for(i = 0; i < 30 - 1; i++){
								for(j = 0; j < 30 - i; j++){
									if(m[j] < m[j + 1]){
										aux = m[j];
										m[j] = m[j + 1];
										m[j + 1] = aux;
										
										strcpy(aux2[j], n[j]);
										strcpy(n[j], n[j + 1]);
										strcpy(n[j + 1], aux2[j]);
										
										aux3 = v[j];
										v[j] = v[j + 1];
										v[j + 1] = aux3;
									}
								}
							}
								printf("Tabela Com Medias Ordenadas!!! \n");
								
								for(i = 0; i < 30; i++){
									for(j = 0; j < 3; j++){
										if(j == 0){
											printf("nome %s = idade %d = nota %.2f ", n[i], v[i], m[i]);
										}
										printf(" ");
									}
									printf("\n");
								}
								printf("\n");
								
									for(i = 0; i < 30 - 1; i++){
										for(j = 0; j < 30 - i; j++){
											if(m[j] == m[j + 1]){
												if(v[j] > v[j + 1]){
													aux = m[j];
													m[j] = m[j + 1];
													m[j + 1] = aux;
										
													strcpy(aux2[j], n[j]);
													strcpy(n[j], n[j + 1]);
													strcpy(n[j + 1], aux2[j]);
										
													aux3 = v[j];
													v[j] = v[j + 1];
													v[j + 1] = aux3;
												}
											}
										}
									}
										printf("Tabela Com Medias e Idades Ordenadas!!! \n");
										
										for(i = 0; i < 30; i++){
											for(j = 0; j < 3; j++){
												if(j == 0){
													printf("nome %s = idade %d = nota %.2f ", n[i], v[i], m[i]);
												}
												printf(" ");
											}
											printf("\n");
										}
				
return 0;			
}
