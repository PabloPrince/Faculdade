animal(cão).
animal(canário).
animal(cobra).
animal(morcego).
animal(gaivota).
voa(canário).
voa(morcego).
voa(gaivota).
dif(X,X) :- !, fail.
dif(_,_).
passaro(X) :- animal(X), voa(X), dif(X,morcego).
