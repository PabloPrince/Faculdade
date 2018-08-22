#include <stdio.h>
#include <stdlib.h>

/*==================================================================================================
  Dada uma sequencia de valores P[0..n], onde a ordem da matriz i é representada por P[i] x P[i + 1]
  1. M[i,j] = menor número de produtos de Ai x ... x Aj
  2. M[i,j] = 0, se i >= j
              min{M[i,k] + M[k+1,j] + P[i] * P[k+1] * P[j + 1]}
              i <= k < j
  3. Calcular M[0,n - 1]
 ====================================================================================================*/

int MatrixChain(int *, int, int **);
void Solucao(int **, int, int);

int main(){
  int i, j, n, P[] = {200, 2, 30, 20, 5}, **B;

  n = sizeof(P) / sizeof(int);
  B = (int**) calloc(n - 1, sizeof(int *));

  for (i = 0; i < n; i++)
    B[i] = (int *) calloc(n - 1, sizeof(int));

  printf("%d\n", MatrixChain(P, n-1, B));
  printf("Possivel solução: ");
  Solucao(B, 0, n - 2);


  return 0;
}

int MatrixChain(int *P, int n, int **B) {
  int i, j, k, q, M[n][n];

  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      M[i][j] = 0;

  for (i = n - 2; i >= 0; i--)
    for (j = i+1; j < n; j++)
      for (k = i; k < j; k++) {
        q = M[i][k] + M[k+1][j] + P[i] * P[k+1] * P[j+1];

        if (M[i][j] == 0 || M[i][j] > q) {
          M[i][j] = q;
          B[i][j] = k;
        }
      }
  return M[0][n - 1];
}

void Solucao(int **B,int i,int j) {
  int k;

  if (i == j)
    printf("A%d", i);
  else {
    k = B[i][j];
    printf("(");
    Solucao(B, i, k);
    printf("x");
    Solucao(B, k + 1, j);
    printf(")");
  }
}
