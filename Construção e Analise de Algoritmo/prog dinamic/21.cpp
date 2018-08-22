#include <stdlib.h>
#include <stdio.h>

int lucro(int *, int, int);
void rastreio(int *, int, int *);

int main() {
  int n, i, c = 30, V[] = {0,30,120,20,40,30,50,10,60,50,70,40,30,90};

  n = sizeof(V) / sizeof(int);
  printf("%d\n", lucro(V, n,c));

  return 0;
}

int lucro(int *V, int n, int c) {
  int i, lk, k, q, L[n+1];

  L[0] = L[1] = 0;

  for (i = 2; i < n; i++) {
    L[i] = L[i-1];
    for (k = 1; k < i; k++){
      lk = V[i] - V[k] - c;
      if (lk > 0)
        q = L[k-1] + lk;
      else
        q = L[k-1];

      if (q > L[i])
        L[i] = q;
    }
  }
  return L[n-1];
}

void rastreio(int *A,int n,int *B) {
  if (n > 0) {
    rastreio(A, B[n], B);
    printf("%dKm ", A[n]);
  }

}
