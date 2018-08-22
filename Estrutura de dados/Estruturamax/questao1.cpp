#include <stdio.h>
#include <stdlib.h>
#include <dlist.h>
#include <time.h>

int main() {
  TList l1, l2;
  TKey k;
  int i, n, j;

  do {
    printf ("Digite um numero: ");
    scanf ("%d", &n);
  } while (n < 0);

  srand(time(NULL));

  for (i = 0; i < n; i++) {
    do {
      k = rand() % (2 * n) + 1;
    } while (l1.indexof(k));

  l1.insert(k, i);
  }

  l1.print("Lista: ");

  for (i = 0; i < n; i++) {
    for (j = i + 1; j < n; j++) {
      if (l1.getkey(i) > l1.getkey(j)) {
        k = l1.getkey(i);
        l1.setkey(i, l1.getkey(j));
        l1.setkey(j, k);
      }
    }
  }
  l1.print("Lista: ");

  return 0;
}
