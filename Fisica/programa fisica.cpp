#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main() {
    printf("----Lancamento de Projetil----\n");
    printf("\n\n");
    float sen,cosen,v0,g;
    system("color 8F");
    int escolha=0;
    printf("Digite a velocidade inicial(m/s):\n");
    scanf("%f",&v0);
    
    if(v0<0){
    	do{
    		printf("Digite um valor positivo para a velocidade(m/s).\n");
    		scanf("%f",&v0);	
		}while(v0<0);
	}
	
    printf("Digite a aceleracao(m/s^2):\n");
    scanf("%f",&g);
    if(g<0){
    	printf("\aPara o calculo usaremos gravidade positiva entao, gravidade = -1 * gravidade\n");
    	g = g*(-1);
    }
    if(g==0){
    	do{
    		printf("Nao usaremos gravidade 0, digite outro valor para a aceleracao(m/s^2).\n");
    		scanf("%f",&g);	
		}while(g==0);
		if(g<0){
    		printf("\aPara o calculo usaremos gravidade positiva entao, gravidade = -1 * gravidade\n");
    		g = g*(-1);
    	}
    }
    
    printf("\n\n");
    printf("----  Dados  ----\n");
    printf("Velocidade(m/s):%.2f\n",v0);
    printf("Aceleracao(m/s^2):%.2f\n",g);
    printf("----  Dados  ----");
    printf("\n");
    printf("\n");
    start:
    printf("Escolha uma das opcoes:\n1)Calcula todos os angulo procurando a Altura Maxima\n2)Calcular todos os angulo procurando o Alcance Maximo.\n3)Digitar novos valores.\n4)Mostrar dados novamente.\n5)Sair.\n\n");
    scanf("%d",&escolha);
    if(escolha==1){
    	int c, maiorang = 0;
    	float radi,alt, maioralt = 0;
		for(c = 0; c < 91; c++) {
			radi = (c * M_PI)/180;
        	sen= sin(radi);
        	alt=(pow(v0,2)*(pow(sen,2)))/(2*g);
        	printf("Angulo: %d ",c);
        	printf("Altura: %.2f\n",alt);
        	if(maioralt < alt) {
        		maioralt = alt;
       			maiorang = c;
			}
		}
		printf("Angulo da maior altura: %d\n",maiorang);
        printf("Altura maximo: %.2f\n",maioralt);
        goto start;
    }
    if(escolha==2){
    	int i, maioran = 0;
    	float rad,al, maioral = 0;
		for(i = 0; i < 91; i++) {
			rad = (i * M_PI)/180;
			cosen=cos(rad);
        	sen= sin(rad);
        	al=(2*pow(v0,2)*(cosen*sen)/g);
        	printf("Angulo: %d ",i);
        	printf("Alcance: %.2f\n",al);
        	if(maioral < al) {
        		maioral = al;
        		maioran = i;
			}
		}
		printf("Angulo do maior alcance: %d\n",maioran);
        printf("Alcance maximo: %.2f\n",maioral);
        goto start;
    }
    if(escolha==3){
    	printf("Digite a velocidade inicial(m/s):\n");
    	scanf("%f",&v0);
    
    	if(v0<0){
    		do{
    			printf("Digite um valor positivo para a velocidade(m/s).\n");
    			scanf("%f",&v0);	
			}while(v0<0);
		}
	
    	printf("Digite a aceleracao(m/s^2):\n");
    	scanf("%f",&g);
    	if(g<0){
    		printf("\aPara o calculo usaremos gravidade positiva entao, gravidade = -1 * gravidade\n");
    		g = g*(-1);
    	}
    	if(g==0){
    		do{
    			printf("Nao usaremos gravidade 0, digite outro valor para a aceleracao(m/s^2).\n");
    			scanf("%f",&g);	
			}while(g==0);
			if(g<0){
    			printf("\aPara o calculo usaremos gravidade positiva entao, gravidade = -1 * gravidade\n");
    			g = g*(-1);
    		}
    	}
        goto start;
    }
	if(escolha==4){
		printf("\n\n");
    	printf("----  Dados  ----\n");
    	printf("Velocidade(m/s):%.2f\n",v0);
    	printf("Aceleracao(m/s^2):%.2f\n",g);
    	printf("----  Dados  ----");
    	printf("\n");
    	printf("\n");
        goto start;
    }
    if(escolha==5){
        system("pause");
        exit(1);
    }
    end:
    return 0;
}
