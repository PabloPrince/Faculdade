dupl(L):- member(X,L),select(X,L,L2),member(Y,L2),X == Y,!.
