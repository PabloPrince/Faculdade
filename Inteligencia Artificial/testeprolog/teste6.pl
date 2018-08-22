filme(amnesia,suspense,nolan,2000,113).
filme(babel,drama,inarritu,2006,142).
filme(capote,drama,miller,2005,98).
filme(casablanca,romance,curtiz,1942,102).
filme(matrix,ficcao,wachowsk,1999,136).
filme(rebecca,suspense,hitchcock,1940,130).
filme(shrek,aventura,adamson,2001,90).
filme(sinais,ficcao,shymalan,2002,106).
filme(spartacus,acao,kubrik,1960,184).
filme(superman,aventura,donner,1978,143).
filme(titanic,romance,cameron,1997,194).
filme(tubarao,suspense,spielberg,1975,124).
filme(volver,drama,almodovar,2006,121).

diretor(X) :- filme(X,_,Y,_,_),write(Y).
genero(X) :- filme(Y,X,_,_,_),write(Y).
fgenero(X,Y) :- filme(X,Y,_,_,_).
dirigido(X) :- filme(Y,_,X,_,_),write(Y).
ano(X) :- filme(Y,_,_,X,_),write(Y).
d100(X) :- filme(X,_,_,_,Y),Y =< 100.
ano05(X) :- filme(X,_,_,Y,_),Y >= 2000, Y =< 2005.
classico(X) :- filme(X,_,_,Y,_),Y < 1980.

fil_classic_s(X) :- classico(X),fgenero(X,Y),Y == suspense.
