renda(joao,2000).
renda(maria,1000).
renda(pedro,1200).
renda(marcelo,1150).
renda(julio,900).

despesa(joao,1900).
despesa(maria,1050).
despesa(pedro,1205).
despesa(marcelo,1000).
despesa(julio,900).

tipor(joao,propria).
tipor(maria,alugada).
tipor(pedro,propria).
tipor(marcelo,alugada).
tipor(julio,propria).

creditov(X) :- renda(X,Y),despesa(X,Z),Y - Z >= 0,tipor(X,propria).


