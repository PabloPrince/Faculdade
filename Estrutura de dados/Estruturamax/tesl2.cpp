#include <stdio.h>
#include <stdlib.h>
#include <slist.h>
#include <time.h>

int main() {
  TList l;
  TKey k;
  int i, n;

  srand(time(NULL));

  do {
    printf("Qtd. de elementos da lista: ");
    scanf("%d", &n);
  } while (n < 0);

  while (l.size() < n) {
    k = rand() % 10 + 1;

    for (i = 1; i <= l.size(); i++)
      if (l.getkey(i) > k)
        break;

    l.insert(k, i);
  }

  l.print("Lista:");

  return 0;
}
