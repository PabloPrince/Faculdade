% Autor:
% Data: 22/03/2018

ultimo(L, U) :- L=[X|Xs], Xs=[], U=X.
ultimo(L,U) :- L=[X|Xs], Xs \=[], ultimo(Xs, U).

%simplificado

ultimo([U], U).
ultimo([X|Xs], U):- ultimo(Xs, U).
