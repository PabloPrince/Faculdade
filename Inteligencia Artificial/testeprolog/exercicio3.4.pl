% Autor:
% Data: 22/03/2018

sum([],0).
sum([X|Xs], X+S) :- sum(Xs, S).