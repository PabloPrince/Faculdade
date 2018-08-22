#include <stdio.h>
#include <stdlib.h>
#include <time.h>

class ponto {
  private:
    int x, y;
  public:
    ponto();
    void setx(int n);
    void sety(int n);
    int getx();
    int gety();
    void imprimir();
};

class pontoclr: public ponto {
  private:
    int c;
  public:
    pontoclr();
    void setcor(int n);
    int getcor();
    void imprimir();
};

int main() {
  ponto p1;
  pontoclr p2;

  srand(time(NULL));

  p1.imprimir();
  p1.setx(rand() % 10);
  p1.sety(rand() % 10);
  p1.imprimir();

  p2.imprimir();
  p2.setx(rand() % 10);
  p2.sety(rand() % 10);
  p2.setcor(rand() % 10);
  p2.imprimir();

 return 0;
}

ponto::ponto() {
  x = y = 0;
}

void ponto::setx(int n) {
  x = n;
}

void ponto::sety(int n) {
  y = n;
}

int ponto::getx() {
  return x;
}

int ponto::gety() {
  return y;
}

void ponto::imprimir() {
  printf("ponto = (%d,%d)\n", x, y);
}

pontoclr::pontoclr() {
  ponto();
  c = 0;
}

void pontoclr::setcor(int n) {
  c = n;
}

int pontoclr::getcor() {
  return c;
}

void pontoclr::imprimir() {
  ponto::imprimir();
  printf("cor = %d\n", c);
}

