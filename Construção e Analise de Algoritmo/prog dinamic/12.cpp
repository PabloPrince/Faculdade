#include <stdio.h>
#include <stdlib.h>
#include <iostream>

using namespace std;

typedef struct {
    int q1,q2;
} pivo;

pivo particione2(int *, int, int, int);


int main(){
  int A[] = {1,2,3,2,3,2,5,6,3,4}, n, i;
  pivo p;
  
  n = sizeof(A)/sizeof(int);
  p = particione2(A, 0, 2, n-1);
  printf("A: ");
  
  for (i = 0; i < n; i++)
    printf(" %d", A[i]);
    
  printf("\n");  
  printf("q1: %d, q2: %d, x: %d ", p.q1, p.q2, p);
    
  return 0;

}

pivo particione2(int *A, int p, int q, int r){
    int i, j;
    pivo x;
    
    if(p < r) {
      i = p-1;
      swap(A[q], A[r]);
      
      
      for (j = p; j < r; j++)
        if(A[j] <= A[r])
          swap(A[++i], A[j]);
          
      swap(A[++i], A[r]);
      x.q2 = i;
      
      i = p-1;
      
      for (j = p; j < x.q2; j++)
        if (A[j] < A[x.q2])
          swap(A[++i], A[j]);
          
      x.q1 = i+1;
    }
    else {
      x.q1 = x.q2 = p;
    }
    return x;
}
