#include "stdio.h"
#include "listag.h"


int main(){
  int cnt;
  Digraph G1, G2, G3;

  G1 = DIGRAPHinit(4);
  DIGRAPHinsertA(G1,0,1);
  DIGRAPHinsertA(G1,1,2);
  DIGRAPHinsertA(G1,2,0);
  DIGRAPHinsertA(G1,2,1);
  DIGRAPHinsertA(G1,3,0);
  DIGRAPHinsertA(G1,3,1);
  DIGRAPHinsertA(G1,3,2);
  DIGRAPHinsertA(G1,2,3);
  DIGRAPHshow(G1);

  printf("\n");

  DIGRAPHremoveA(G1,2,3);
  DIGRAPHremoveA(G1,3,2);
  DIGRAPHremoveA(G1,3,1);
  DIGRAPHremoveA(G1,3,0);
  DIGRAPHshow(G1);

  printf("\n");

  G2 = DIGRAPHconstruct();
  DIGRAPHshow(G2);

  printf("\n");

  cnt = DIGRAPHpath(G2,0,4);
  if (cnt)
    printf("Tem caminho e tamanho = %d", cnt);
  else
    printf("Nao tem caminho");

  printf("\n");

  G3 = DIGRAPHaleatorio(10,30);
  DIGRAPHshow(G3);

  return 0;
}
