% Autor:
% Data: 22/03/2018

compr(L,T) :- L=[X|Xs], compr(Xs, T1), T = 1 + T1.
compr(L,T) :- L = [], T=0.


%uma outra versão
%%compr([_|Xs], 1 + T):- compr(Xs, T).
%compr([],0).