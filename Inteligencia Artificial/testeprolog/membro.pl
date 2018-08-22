% Autor:
% Data: 22/03/2018

membro(X, [X|_]).
membro(X, [_|Xs]) :- membro(X,Xs).

%versão mais simples

membro1(X, [Y|_]):- X ==Y.
membro1(X, [Y|Xs]) :- X \== Y, membro1(X, Xs).