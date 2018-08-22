apaga(X,L1,L2) :- L1 = [X|L2].
apaga(X,L1,L2):- L1 = [Y|L3], L2 = [Y|L4],apaga(X,L3,L4).
