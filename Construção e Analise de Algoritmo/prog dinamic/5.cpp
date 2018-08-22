#include <stdlib.h>
#include <stdio.h>

int maiorsoma(int *, int, int);
void rastreio(int *, int, int *);

int main() {
  int n, i, S[] = {0, 3, 5, 6, 8, 9}, t = 16;

  n = sizeof(S) / sizeof(int);
  printf("%d\n", maiorsoma(S,n,t));

  return 0;
}

int maiorsoma(int *S, int n, int t) {
  int i, j, q, M[n+1][t+1];

  for (i = 0; i <= n; i++) {
    for (j = 0; j <= t; j++) {
      if (i == 0 || j == 0)
        M[i][j] = 0;
      else
        if (S[i] > j)
        M[i][j] = M[i-1][j];
        else {
          q = S[i] + M[i-1][j-S[i]];
          if (M[i-1][j] > q)
            M[i][j] = M[i-1][j];
          else
            M[i][j] = q;
        }
    }
  }
  return M[n][t];
}

void rastreio(int *A,int n,int *B) {
  if (n > 0) {
    rastreio(A, B[n], B);
    printf("%dKm ", A[n]);
  }

}
