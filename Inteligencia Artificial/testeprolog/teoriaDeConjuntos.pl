% Autor:
% Data: 22/03/2018

pertence(X,C) :-member(X,C).

subConjunto([X|Xs], Y):- select(X,Y,Ys), subConjunto(Xs, Ys).
subConjunto([], Y).

intersecao([], X, []).
intersecao([X|Xs], Y, [X|Is]):- member(X,Y), intersecao(Xs, Y, Is).
intersecao([X|Xs], Y, Is) :- \+ member(X,Y), intersecao(Xs, Y, Is).
