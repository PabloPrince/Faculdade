#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int palidromo(char *, int, int **);
void rastreio (char *, int, int, int **);

int main() {
  char s[100];
  int n, i, **R;

  strcpy(s,"ACGTAGTCAAAATCG");
  n = strlen(s);
  R = (int**) calloc(n - 1, sizeof(int *));

  for (i = 0; i < n; i++)
    R[i] = (int *) calloc(n - 1, sizeof(int));

  printf("Maior subsequencia palidromo: %d\n", palidromo(s,n,R));
  printf("Possivel sequencia: ");
  rastreio(s,0,n-1,R);

  return 0;
}

int palidromo(char *S, int n, int **R) {
  int i, j, P[n][n];

    for (i = n-1; i >= 0; i--) {
      for (j = 0; j < n; j++) {
        if (i > j) {
          P[i][j] = 0;
        }
        else
          if (i == j) {
            P[i][j] = 1;
            R[i][j] = 1;
          }
          else
            if (S[i] == S[j]) {
              P[i][j] = 2 + P[i+1][j-1];
              R[i][j] = 2;
            }
            else
              if (P[i][j-1] > P[i+1][j]) {
                P[i][j] = P[i][j-1];
                R[i][j] = 3;
              }
              else {
                P[i][j] = P[i+1][j];
                R[i][j] = 4;
              }
      }
    }
  return P[0][n-1];
}

void rastreio(char *S, int i, int j, int **R) {
  if (R[i][j] > 0) {
    if (R[i][j] == 1)
      printf("%c", S[i]);
    else
      if (R[i][j] == 2) {
        printf("%c", S[i]);
        rastreio(S, i+1, j-1,R);
        printf("%c", S[j]);
      }
      else
        if (R[i][j] == 3)
          rastreio(S, i, j-1, R);
        else
          rastreio(S, i+1, j, R);
  }
}
