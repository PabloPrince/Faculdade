#include <stdio.h>
#include <stdlib.h>
#include <dlist.h>
#include <time.h>

int main() {
  TList l1, l2;
  TKey k;
  int i, j, n;

  srand(time(NULL));

  do {
    printf("Digite um numero: ");
    scanf("%d", &n);
  } while (n < 0);

  for (i = 0; i < n; i++) {
    k = rand() % 10 + 1;
    l1.insert(k, i);
  }

  l1.print("Lista: ");

  for (i = 0; i < n; i++)
    l2.insert(l1.getkey(n - i), i);

  l2.print("Lista: ");

  return 0;
}
