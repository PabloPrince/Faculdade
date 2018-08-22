#ifndef LISTA_H_INCLUDED
#define LISTA_H_INCLUDED
#define padrao " %d"

#include "stdio.h"
#include "stdlib.h"

#define SIZE_MAX 100

typedef int TKey;

class TList {
  private:
    int s;                       //tamanho atual da lista
    TKey keys[SIZE_MAX];         //elementos
  public:
    TList();                     //construtor
    bool empty();                //retorna V se a lista estiver vazia; e F, caso contrario
    bool full();                 //retorna V se a lista estiver cheia; e F, caso contrario
    void insert(TKey k, int i);  //insere a chave K na ia. posicao da lista
    void remove(int i);          //apaga o elemento da ia. posicao da lista
    TKey getkey(int i);          //retorna a chave da ia. posicao da lista
    void setkey(int i, TKey k);  //altera a chave da ia. posicao da lista para K
    int  indexof(TKey k);        //retorna a ordem da primeira ocorrencia de K na lista. Se K nao esta na lista, retorna 0
    int  size();                 //retorna o tamanho da lista
    void print(char *txt);       //imprime os elementos da lista
};

TList::TList() {
  s = 0;
}

bool TList::empty() {
  return s == 0;
}

bool TList::full() {
  return s == SIZE_MAX;
}

void TList::insert(TKey k, int i) {
  if (!full() && i >= 1 && i <= s + 1) {
    int j;

    for (j = size(); j >= i; j--)
      keys[j] = keys[j-1];

    keys[i-1] = k;
    s++;
  }
}

void TList::remove(int i) {
  if (i >= 1 && i <= s) {
    int j;

    for (j = i - 1; j < s - 1; j++)
      keys[j] = keys[j+1];

    s--;
  }
}

TKey TList::getkey(int i) {
  return keys[i-1];
}

void TList::setkey(int i, TKey k) {
  if (i >= 1 && i <= s)
    keys[i-1] = k;
}

int  TList::indexof(TKey k) {
  int i;

  for (i = 0; i < s; i++)
    if (keys[i] == k)
      return i + 1;

  return 0;
}

int  TList::size() {
  return s;
}

void TList::print(char *txt) {
  printf("%s", txt);

  if (empty())
    printf(" Vazia!\n");
  else {
    int i;

    for (i = 0; i < s; i++)
      printf(padrao, keys[i]);

    printf("\n");
  }
}

#endif
