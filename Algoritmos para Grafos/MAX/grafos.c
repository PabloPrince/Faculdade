#define Vertex int
#define Edge Arc
#define EDGE ARC
#define graph digraph
#define Graph Digraph
#define GRAPHinit DIGRAPHinit
#define GRAPHshow DIGRAPHshow
#include "stdlib.h"
#include "stdio.h"
#define maxV 100
#include "time.h"

typedef struct{
  Vertex v;
  Vertex w;
}Arc;

Arc ARC(Vertex v, Vertex w){
  Arc e;
  e.v = v;
  e.w = w;
  return e;
}

struct digraph {
  int V;
  int A;
  int **adj;
};

typedef struct digraph *Digraph;

int **MATRIXint(int r, int c, int val){
  Vertex i, j;
  int **m = (int**)malloc(r * sizeof(int *));
  for(i = 0; i < r; i++)
    m[i] = (int *) malloc(c * sizeof(int));
  for(i = 0; i < r; i++)
    for(j = 0; j < c; j++)
      m[i][j] = val;
  return m;
}

Digraph DIGRAPHinit(int V){
  Digraph G = (Digraph)malloc(sizeof * G);
  G->V = V;
  G->A = 0;
  G->adj = MATRIXint(V,V,0);
  return G;
}

void DIGRAPHinsertA(Digraph G, Vertex v, Vertex w){
  if(v != w && G->adj[v][w] == 0){
    G->adj[v][w] = 1;
    G->A++;
  }
}

void DIGRAPHremoveA(Digraph G, Vertex v, Vertex w){
  if( G->adj[v][w] = 1){
    G->adj[v][w] = 0;
    G->A--;
  }
}

void DIGRAPHshow (Digraph G){
  Vertex v, w;
  for(v = 0; v < G->V; v++){
    printf("%2d:", v);
    for(w = 0; w < G->V; w++)
      if(G->adj[v][w] == 1)
        printf("%2d", w);
    printf("\n");
  }
}

int DIGRAPHindeg (Digraph G, Vertex v) {
  Vertex w;
  int grau = 0;

  for(w = 0; w < G->V; w++)
    if(G->adj[w][v] == 1)
      grau++;

  return grau;
}

int DIGRAPHoutdeg (Digraph G, Vertex v) {
  Vertex w;
  int grau = 0;

  for(w = 0; w < G->V; w++)
    if(G->adj[v][w] == 1)
      grau++;

  return grau;
}

int DIGRAPHigual (Digraph G1, Digraph G2) {
  Vertex v1, w1;
  int p = 0;

  if(G1->V != G2->V)
    return 0;
  if (G1->A != G2->A)
    return 0;

  for(v1 = 0; v1 < G1->V; v1++){
    for(w1 = 0; w1 < G1->V; w1++)
      if(G1->adj[v1][w1] != G2->adj[v1][w1])
        return 0;
    }
  return 1;
}

static int cont = 0;
static int lbl[maxV];

int DIGRAPHpath (Digraph G, Vertex s, Vertex t) {
  Vertex v;

  for (v = 0; v < G->V; v++)
    lbl[v] = -1;

  return pathR(G,s,t);
}

int pathR (Digraph G, Vertex v, Vertex t) {
  Vertex w;
  lbl[v] = 0;

  if (v == t)
    return 1;

  for (w = 0; w < G->V; w++)
    if (G->adj[v][w] == 1 && lbl[w] == -1)
      if (pathR(G,w,t) >= 1)
        return ++cont;

  return 0;
}

int st_corte (Digraph G, Vertex s, Vertex t) {
  Vertex v, w;

  if (lbl[s] == -1 || lbl[t] == 0)
    return 0;

  for (v = 0; v < G->V; v++)
    for (w = 0; w < G->V; w++)
      if (G->adj[v][w] == 1 && (lbl[v] == 0 && lbl[w] == -1))
        return 0;

  return 1;
}

int DIGRAPHconsistent (Digraph G) {
  Vertex v, w;
  int contA = 0;

  for (v = 0; v < G->V; v++)
    for (w = 0; w < G->V; w++)
      if (G->adj[v][w] == 1)
        contA++;

  if (contA != G->V)
    return 0;
  for (v = 0; v < G->V; v++)
    if (G->adj[v][v] == 1)
      return 0;

  return 1;
}

void DIGRAPHdestroy (Digraph G) {
  Vertex v;

  for (v = 0; v < G->V; v++)
    free(G->adj[v]);
  free(G->adj);
  free(G);
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

void GRAPHinsertE (Graph G, Vertex v, Vertex w){
  DIGRAPHinsertA(G, v, w);
  DIGRAPHinsertA(G, w, v);
}

void GRAPHremoveE (Graph G, Vertex v, Vertex w){
  DIGRAPHinsertA(G, v, w);
  DIGRAPHinsertA(G, w, v);
}
