% Autor:
% Data: 22/03/2018

select1(X, [X|Xs], Xs).
select1(X, [Y|Xs], [Y|Zs]) :- select1(X, Xs, Zs).