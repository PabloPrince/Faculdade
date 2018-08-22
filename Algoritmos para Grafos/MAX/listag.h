#include "grafosl.c"

link NEW (Vertex w, link next);
Digraph DIGRAPHinit (int V);
void DIGRAPHinsertA (Digraph G,Vertex v,Vertex w);
void DIGRAPHremoveA(Digraph G, Vertex v,Vertex w);
void DIGRAPHshow (Digraph G);
int DIGRAPHpath (Digraph G,Vertex s,Vertex t);
void pathR (Digraph G, Vertex v);
int DIGRAPHconsistent (Digraph G);
void DIGRAPHdestroy(Digraph G);
Digraph DIGRAPHconstruct ();
Digraph DIGRAPHaleatorio(int V, int A);
