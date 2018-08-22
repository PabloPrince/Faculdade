#include "grafos.c"

int **MATRIXint(int r, int c, int val);
Digraph DIGRAPHinit(int V);
void DIGRAPHinsertA(Digraph G, Vertex v, Vertex w);
void DIGRAPHremoveA(Digraph G, Vertex v, Vertex w);
void DIGRAPHshow (Digraph G);
int DIGRAPHindeg (Digraph G, Vertex v);
int DIGRAPHoutdeg (Digraph G, Vertex v);
int DIGRAPHigual (Digraph G1, Digraph G2);
int DIGRAPHpath (Digraph G, Vertex s, Vertex t);
int pathR (Digraph G, Vertex v, Vertex t);
int st_corte (Digraph G, Vertex s, Vertex t);
int DIGRAPHconsistent (Digraph G);
void DIGRAPHdestroy (Digraph G);
Digraph DIGRAPHconstruct ();
Digraph DIGRAPHaleatorio(int V, int A);
