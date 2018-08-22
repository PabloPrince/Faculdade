#include <stdlib.h>
#include <stdio.h>

int penamin(int *, int, int *);
void rastreio(int *, int, int *);

int main() {
  int n, i, A[] = {0, 150, 210, 320, 400, 450, 510}, *B;

  n = sizeof(A) / sizeof(int);
  B = (int*) calloc(n, sizeof(int ));

  printf("%d\n", penamin(A,n,B));
  for (i = 0; i < n; i++)
    printf("%d ", B[i]);

  printf("\nPossiveis Paradas: ");
  rastreio(A, n - 1, B);
  printf("\n");

  return 0;
}

int penamin(int *A, int n, int *B) {
  int i, k, q, P[n];

  P[0] = 0;

  for (i = 1; i < n; i++) {
    P[i] = abs(200 - A[i]);
    B[i] = 0;

    for (k = i; k > 0; k--) {
      q = P[k] + abs(200 - A[i] + A[k]);

      if (q < P[i]) {
        P[i] = q;
        B[i] = k;
      }
    }
  }
  return P[n-1];
}

void rastreio(int *A,int n,int *B) {
  if (n > 0) {
    rastreio(A, B[n], B);
    printf("%dKm ", A[n]);
  }

}
