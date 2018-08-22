#include <stdio.h>
#include <stdlib.h>

/*==================================================================================================
  Mochila sem repetições
 ====================================================================================================*/

int MaxRevenue(int *, int *, int, int, int **);
void Solucao(int *, int *, int, int, int **);

int main(){
  int P[] = {0, 1, 3, 8, 16, 4, 15}, V[] = {0, 1, 5, 12, 6, 8, 28}, n, c = 20, **B, i;

  n = sizeof(V) / sizeof(int);
  B = (int**) calloc(n, sizeof(int *));

  for (i = 0; i < n; i++)
    B[i] = (int *) calloc(c + 1, sizeof(int));

  printf("%d\n", MaxRevenue(P, V, n - 1, c, B));
  printf("Possivel solução: \n");
  Solucao(P, V, n - 2, c, B);

  return 0;
}

int MaxRevenue(int *P, int *V, int n, int c, int **B) {
  int i, j, q, L[n + 1][c + 1];

  for (i = 0; i <= n; i++)
    for (j = 0; j <= c; j++)
      if (i == 0 || j == 0)
        L[i][j] = 0;
      else {
        L[i][j] = L[i - 1][j];
        B[i][j] = 0; // O produto não foi selecionado

        if (P[i] <= j) {
          q = L[i - 1][j - P[i]] + V[i];

          if (q > L[i][j]) {
            L[i][j] = q;
            B[i][j] = 1; // O produto i foi selecionado
          }
        }
      }

  return L[n][c];
}

void Solucao(int *P, int *V, int n, int c, int **B) {
  int i;

  if (n > 0 && c > 0) {
    i = B[n][c];

    if (i == 1) {
      Solucao(P, V, n - 1, c - P[n], B);
      printf("Produto %d <%2d, %2d>\n", n, P[n], V[n]);
    }
    else
      Solucao(P, V, n - 1, c, B);
  }
}
