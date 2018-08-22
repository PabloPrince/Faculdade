#include <stdio.h>
#include <stdlib.h>
#include <dlist.h>

int main() {
  TList ln, ld;
  TKey a, b, c, d;
  int i, n;

  do {
    printf ("Digite o nivel: ");
    scanf ("%d", &n);
  } while (n < 1);

  ln.insert(0, 1);
  ln.insert(1, 2);
  ld.insert(1, 1);
  ld.insert(1, 2);

  i = 1;
  a = 0;
  b = 1;

  while (i < ln.size()) {
    b = ln.getkey(i + 1);
    d = ld.getkey(i + 1);

    if (c + d <= n) {
      ln.insert(a + b, i + 1);
      ld.insert(c + d, i + 1);
      b = a + b;
      d = c + d;
    }
    else {
      i++;
      a = b;
      c = d;
    }
  }

  printf("Fracoes de nivel %d: ", n);

  for (i = 1; i <= ln.size(); i++)
    printf(" %d/%d", ln.getkey(i), ld.getkey(i));

  return 0;
}
