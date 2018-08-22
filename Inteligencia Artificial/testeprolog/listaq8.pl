reversao(L,R) :- reversao(L,[],R).
reversao([],R,R).
reversao([X|Xs], Acc, R):- reversao(Xs, [X|Acc], R).

palindrome(L):- reversao(L,R), R == L.
