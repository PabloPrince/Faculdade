% Autor:
% Data: 22/03/2018

compr1([], 0).
compr1([_|Xs],1+T) :- compr1(Xs, T).