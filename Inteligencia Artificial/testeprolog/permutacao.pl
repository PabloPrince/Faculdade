% Autor:
% Data: 22/03/2018

permutacao(Xs, [Z|Zs]):- select(Z, Xs, Ys), permutacao(Ys, Zs).
permutacao([],[]).