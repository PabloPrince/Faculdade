bonita(ursula).
rico(roberto).
bonito(roberto).
rica(berta).
forte(berta).
forte(pierre).
bonito(pierre).
amavel(bruno).
forte(bruno).

homem(X) :- bonito(X);amavel(X).
mulher(X) :- bonita(X);rica(X).
gostab(berta,Y) :- homem(Y),amavel(Y).
gostau(ursula,Y) :- homem(Y),
    ((rico(Y),amavel(Y));(bonito(Y),forte(Y))).
felizh(X) :- (homem(X),rico(X));(gostab(_,X);gostau(_,X)).
felizm(X) :- gostab(X,bruno);gostau(X,pierre).
