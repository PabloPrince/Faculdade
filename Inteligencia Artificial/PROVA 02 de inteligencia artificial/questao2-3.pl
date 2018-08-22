maximo(X,[X]).
maximo(X,[Y|L]) :- maximo(X,L), X > Y, !.
maximo(Y,[Y|_]).
