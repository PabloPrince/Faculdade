num(N,positivo) :- N>0, !.
num(0,nulo):- !.
num(N,negativo) :- N<0.
