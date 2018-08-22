% Autor:
% Data: 22/03/2018

estaOrdenado([]).
estaOrdenado([_]).
estaOrdenado([X, Y|XYs]):- X =< Y, estaOrdenado([Y|XYs]).