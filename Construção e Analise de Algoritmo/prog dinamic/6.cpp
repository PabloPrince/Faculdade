#include <stdlib.h>
#include <stdio.h>

int solidez(int *, int);
void rastreio(int *, int, int *);

int main() {
  int n, i, A[] = {5, 15, -30, 10, -5, 40, 10 -5, 3};

  n = sizeof(A) / sizeof(int);
  printf("%d\n", solidez(A, n));

  return 0;
}

int solidez(int *A, int n) {
  int i, sol, S[n];

  sol = S[0] = A[0];

  for (i = 1; i < n; i++) {
    if(S[i - 1] > 0)
      S[i] = A[i] + S[i-1];
    else
      S[i] = A[i];

    if (S[i] > sol)
      sol = S[i];
  }
  return sol;
}

void rastreio(int *A,int n,int *B) {
  if (n > 0) {
    rastreio(A, B[n], B);
    printf("%dKm ", A[n]);
  }

}
