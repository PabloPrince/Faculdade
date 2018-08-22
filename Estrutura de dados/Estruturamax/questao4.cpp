#include <stdio.h>
#include <stdlib.h>
#include <dlist.h>
#include <time.h>

long fat(int);

int main() {
  TList lc, lq;
  long n;
  char s[20];
  int i, p;

  srand(time(NULL));

  printf("Digite a palavra: ");
  scanf("%s", &s);

  for (i = 0; s[i]; i++) {
    p = lc.indexof(s[i]);

    if (p) {
      lq.setkey(p, lq.getkey(p) + 1);
    }
    else {
      lc.insert(s[i], lc.size() + 1);
      lq.insert(1, lq.size() + 1);
    }
  }

  n = fat(i);

  for (i = 1; i <= lq.size(); i++)
    if(lq.getkey(i) > 1)
      n /= fat(lq.getkey(i));

  printf("Qtd. de anagramas: %d\n", n);
  lc.print("Caracteres:");
  lq.print("Quantidades:");

  return 0;
}

long fat(int n) {
  return n <= 1? 1: n * fat(n - 1);
}
