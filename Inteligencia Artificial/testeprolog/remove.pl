% Autor:
% Data: 22/03/2018

remUa(L, Lu) :- append(Lu, [_], L).

remU(L, Lu) :- L=[X|Xs], Xs=[], Lu = [].

%simplificado
remU([_], []).
remU([X|Xs], [X|Xu]):- remU(Xs, Xu).