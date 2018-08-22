ultimo([U], U).
ultimo([X|Xs], U):- ultimo(Xs, U).

primeiro([X|_], X).
