% Autor:
% Data: 22/03/2018

reversao(L,R) :- reversao(L,[],R).
reversao([],R,R).
reversao([X|Xs], Acc, R):- reversao(Xs, [X|Acc], R).