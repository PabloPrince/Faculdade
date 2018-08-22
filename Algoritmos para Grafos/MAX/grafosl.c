#define Vertex int
#define graph digraph
#define Graph Digraph
#define GRAPHinit DIGRAPHinit
#define GRAPHshow DIGRAPHshow
#include "stdlib.h"
#include "stdio.h"
#define maxV 100
#include "time.h"

typedef struct node *link;
  struct node {
    Vertex w;
    link next;
  };

struct digraph {
  int V;
  int A;
  link *adj;
};

link NEW (Vertex w, link next) {
  link p = malloc(sizeof *p);
  p->w = w;
  p->next = next;
  return p;
}

typedef struct digraph *Digraph;

Digraph DIGRAPHinit (int V) {
  Vertex v;
  Digraph G = malloc(sizeof *G);
  G->V = V;
  G->A = 0;
  G->adj = malloc(V * sizeof(link));
  for (v = 0; v < V; v++)
    G->adj[v] = NULL;
  return G;
}

void DIGRAPHinsertA (Digraph G,Vertex v,Vertex w) {
  link p;
  if (v == w)
    return;
  for (p = G->adj[v];p != NULL;p = p->next)
    if (p->w== w)
	  return;
  G->adj[v] = NEW(w,G->adj[v]);
  G->A++;
}

void DIGRAPHremoveA(Digraph G, Vertex v,Vertex w ){
  link p, q;

  for (p = G->adj[v];p != NULL;)
    if (p->w == w) {
      q = p;
      p = p->next;
      free(q);
    }
  return;
}

void DIGRAPHshow (Digraph G) {
  Vertex v;
  link p;
  for (v = 0; v < G->V; v++) {
    printf("%2d:", v);
    for (p=G->adj[v];p!= NULL;p=p->next)
      printf("%2d", p->w);
    printf("\n");
  }
}

static int lbl[maxV];
static Vertex parnt[maxV];
int DIGRAPHpath (Digraph G,Vertex s,Vertex t) {
  Vertex v;
  for (v = 0; v < G->V; v++) {
    lbl[v] = -1;
    parnt[v] = -1;
  }
  parnt[s] = s;
  pathR(G,s);
  if (lbl[t] == -1)
    return 0;
  else
    return 1;
}

void pathR (Digraph G,Vertex v) {
  link p;
  lbl[v] = 0;
  for (p=G->adj[v]; p != NULL; p=p->next)
    if (lbl[p->w] == -1) {
      parnt[p->w] = v;
      pathR(G, p->w);
    }
}

int DIGRAPHconsistent (Digraph G) {
  link p, q;
  int contA = 0;
  Vertex v;

  for (v = 0; v < G->V; v++)
    for (p = G->adj[v]; p != NULL; p = p->next)
      contA++;
  if (contA != G->A)
    return 0;

  for (v = 0; v < G->V; v++)
    for (p = G->adj[v]; p != NULL; p = p->next)
      if (p->w == v)
        return 0;

  for (v = 0; v < G->V; v++)
    for (p = G->adj[v]; p != NULL; p = p->next)
      for (q = p->next; q != NULL; q = q->next)
        if (q->w == p->w)
          return 0;

  return 1;
}

void DIGRAPHdestroy(Digraph G) {
  Vertex v;
  link p, q;

  for (v = 0; v < G->V; v++) {
    for (p = G->adj[v]; p != NULL;) {
      q = p;
      p = p->next;
      free(q);
    }
    free(p);
    G->adj[v] = NULL;
  }
  free(G->adj);
  free(G);
  G = NULL;
}

Digraph DIGRAPHconstruct () {
  Digraph G;
  FILE *arq;
  int V;
  Vertex v, w;
  arq = fopen("data", "r");

  if (arq == NULL) {
    printf("Erro ao abrir");
    system("pause");
    exit(1);
  }

  fscanf(arq, "%d", &V);
  G = DIGRAPHinit(V);

  while(fscanf(arq, "%d %d", &v, &w) != EOF)
    DIGRAPHinsertA(G,v,w);

  fclose(arq);

  return G;
}

Digraph DIGRAPHaleatorio(int V, int A) {
  Vertex v, w;
  Digraph G = DIGRAPHinit(V);
  srand(time(NULL));

  while(G->A < A) {
    v = rand() % V;
    w = rand() % V;
    DIGRAPHinsertA(G,v,w);
  }

  return G;
}
