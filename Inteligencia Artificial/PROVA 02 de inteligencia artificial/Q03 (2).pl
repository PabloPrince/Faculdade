estrada(a,b,25).
estrada(b,e,32).
estrada(a,b,25).
estrada(b,e,32).
estrada(e,f,26).
estrada(a,d,23).
estrada(b,c,19).
estrada(c,f,28).
estrada(c,d,14).
estrada(d,f,30).

dist(A, B, D) :- travessiaCusto(A, B, [A], _, D),!.
travessiaCusto(A, B, Visitados, [B|Visitados], Custo1) :- estrada(A, B, Custo1).
travessiaCusto(A, B, Visitados, Cam, Custo) :- estrada(A, C, Custo2), C \== B, \+ member(C, Visitados), travessiaCusto(C, B, [C|Visitados], Cam, CustoResto), Custo is Custo2 + CustoResto.
