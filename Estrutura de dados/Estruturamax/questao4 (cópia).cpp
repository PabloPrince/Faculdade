#include <stdio.h>
#include <stdlib.h>
#include <slist.h>
#include <time.h>

int main() {
  TList l;
  TList l1;
  int n, p;

  srand(time(NULL));

  do {
    printf("Qtd. de elementos da lista: ");
    scanf("%d", &n);
  } while (n < 0);

  while (l.size() < n)
    l.insert(rand() % 10 + 1, l.size() + 1);

  l.print("Lista:");
  p = l.size();

  if (p > 1) {

    while (!l.empty()) {
      l1.insert(l.getkey(1), 1);
      l.remove(1);
    }

    while (!l1.empty()) {
      l.insert(l1.getkey(1), n);
      l1.remove(1);
    }
  }

  l.print("Lista:");

  return 0;
}
