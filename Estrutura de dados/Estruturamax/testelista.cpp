#include <stdio.h>
#include <stdlib.h>
#include <slist.h>
#include <time.h>

int main() {
  TList l;
  TKey k;
  int n;

  srand(time(NULL));

  do {
    printf("Qtd. de elementos da lista: ");
    scanf("%d", &n);
  } while (n < 0);

  while (l.size() < n) {
    do {
      k = rand() % (2 * n) + 1;
    } while (l.indexof(k) > 0);
  l.insert(k, l.size() + 1);
}

  l.print("Lista:");

  return 0;
}
