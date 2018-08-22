% Autor:
% Data: 22/03/2018

membro(X,L) :- append(_, [X|_], L).
prefix(P,L) :- append(P, _, L).
suffix(S,L) :- append(_, S,L).
sublist1(S,L) :- prefix(P,L), suffix(S,P).