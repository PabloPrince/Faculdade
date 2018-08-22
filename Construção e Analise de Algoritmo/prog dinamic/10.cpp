#include <stdio.h>
#include <stdlib.h>

int inversoes(int *, int, int);
int mergeinv(int *, int, int, int);

int main(){
  int A[] = {5, 2, 4, 7, 3, 8, 1, 61}47, n, i, p;

  n = sizeof(A)/sizeof(int);
  p = inversoes(A, 0, n-1);
  printf("A: ");

  for (i = 0; i < n; i++)
    printf(" %d", A[i]);

  printf("\n");
  printf("inversões %d", p);

  return 0;
}

int inversoes(int *A, int p, int r) {
  int q, il, ir, it;

  if(p < r) {
    q = (p + r) / 2;
    il = inversoes(A, p, q);
    ir = inversoes(A, q + 1, r);
    it = mergeinv(A, p, q, r);
    return il + ir + it;
  }
  else
    return 0;
}

int mergeinv(int *A, int p, int q, int r) {
  int nl, nr, i, j, k, inv;

  nl = q - p + 1;
  nr = r - q;

  int *L = (int *) calloc(nl,sizeof(int));
  int *R = (int *) calloc(nr,sizeof(int));

  for (i = p; i <= q; i++)
    L[i - p] = A[i];
  for (i = q + 1; i <= r; i++)
    R[i - q - 1] = A[i];

  inv = i = j = 0;

  for (k = p; k <= r; k++) {
    if ((i < nl) && ((j == nr) || (R[j] >= L[i])))
      A[k] = L[i++];
    else {
      A[k] = R[j++];
      inv = inv + nl - i;
    }
  }
  return inv;
}
