#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void geravetor(int *vet, int *x);

void imprimevetor(int *vet2, int y);

void bolha(int *vet3, int z);

void selecao(int *vet4, int l);

void insercao(int *vet5, int m);

void busca(int *vet6, int d);

int main(){
	
	int t, a, i, e;
	char g;
	
	t = 10;
		
	int v[t];
	
	srand(time(NULL));
	
	for(i = 0; i < t; i++){
		v[i] = rand() % 10;
	}
	
		do{
			do{
			printf("\n");	
			printf("Escolha uma das opcoes abaixo: \n");
			printf("Digite 1 para gerar o vetor: \n");
			printf("Digite 2 para imprimir o vetor: \n");
			printf("Digite 3 para ordenar o vetor: \n");
			printf("Digite 4 para buscar elemento no vetor: \n");
			printf("Digite 5 para finalizar o programa: \n");
			scanf("%d", &a);
			
				if((a <= 0) || (a > 5)){
					printf("Erro!!! Digite novamente: \n");
				}
				
			}while((a <= 0) || (a > 5));
				
				if(a == 1){
					geravetor(v, &t);
				}
					if(a == 2){
						printf("\n");
						printf("Vetor: \n");
						imprimevetor(v, t);
						printf("\n");
					}
						if(a == 3){
							do{
								printf("\n");
								printf("a) Bolha: \n");
								printf("b) Insercao: \n");
								printf("c) Selecao: \n");
								scanf(" %c", &g);
					
									if((g != 'a') && (g != 'b') && (g != 'c')){
										printf("\n");
										printf("Erro!!! Digite novamente: \n");
									}
					
							} while((g != 'a') && (g != 'b') && (g != 'c'));
						}
							if(g == 'a'){
								bolha(v, t);
							}
								if(g == 'b'){
									insercao(v, t);
								}
									if(g == 'c'){
										selecao(v, t);
									}
										if(a == 4){
											printf("\n");
											busca(v, t);
											printf("\n");
										}
											if(a == 5){
												printf("\n");
												printf("Obrigado por utilizar meu programa!!!");
												break;
											}				
				e = 1;
		} while(e == 1);
	
return 0;	
}

void geravetor(int *vet, int *x){
	
	int c, p;
	
	do{
		printf("\n");
		printf("Digite o tamanho do vetor: \n");
		scanf("%d", &p);
		
			if(p <= 0){
				printf("\n");
				printf("Erro! Por favor Digite novamente: ");
			}
			
	} while(p <= 0);
	
		*x = p;
		
	srand(time(NULL));
	
	for(c = 0; c <= *x; c++){
		vet[c] = rand() % (10 * (*x));
	}
}

void imprimevetor(int *vet2, int y){
	
	int p;
	
	for(p = 0;p < y; p++){
		printf("%d ",vet2[p]);
	}
}

void bolha(int *vet3, int z){
	
	int k, aux = 0, h;
	
	for(h = z - 1; h >= 1; h--){
		for(k = 0;k < h; k++){
			if(vet3[k] > vet3[k + 1]){
				aux = vet3[k];
				vet3[k] = vet3[k + 1];
				vet3[k + 1] = aux;
			}
		}
	}
}

void selecao(int *vet4, int l){
	
	int c, r, m, aux;
	
  	for (c = 0; c < (l - 1); c++){
	    m = c;
 	   for (r = (c+1); r < l; r++){
 	     if(vet4[r] < vet4[m]){
 	       m = r;
 	     }
 	   }
 		   if (c != m){
    	   	  aux = vet4[c];
    	   	  vet4[c] = vet4[m];
    	   	  vet4[m] = aux;
    	   }
  	}
}

void insercao(int *vet5, int m){
	
	int x, z, aux3;
	
   		for(x = 1; x < m; x++){
   			
    	  aux3 = vet5[x];
    	  z = x - 1;
    	  
    	  while ((z >= 0) && (aux3 < vet5[z])){
          	 vet5[z+1] = vet5[z];
          	 z--;
      	  }
      		vet5[z+1] = aux3;
   		}
}

void busca(int *vet6, int d){
	
	int o, n, u = 0;

	printf("Digite o numero que deseja procurar no vetor:");
	scanf("%d", &n);
	
	for(o = 0;o < d; o++){
	
			if(n == vet6[o] && (u == 0)){
				printf("\n");
				printf("A primeira vez que o numero digitado aparece no vetor e na %d", o);
				printf(" posicao!");	
				u = u + 1;
			}
	}
		u = 0;
		
	for(o = 0;o < d; o++){
		
		if(n != vet6[o]){
			u = u + 1;
		}
			if(u == d){
				printf("\n");
				printf(" -1 ");
			}
	}
}
