comp(0,[]).
comp(X,[_|L]) :- comp(X1,L), X is 1 + X1.

soma(0,[]).
soma(X,[Y|L]) :- soma(Z,L), X is Z+Y.

media(X,L) :- comp(C,L),soma(Z,L), X is C/Z.
