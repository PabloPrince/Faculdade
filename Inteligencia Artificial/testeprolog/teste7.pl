piloto(lamb).
piloto(besenyei).
piloto(chambliss).
piloto(maclean).
piloto(mangold).
piloto(jones).
piloto(bonhomme).

equipe(lamb,breitling).
equipe(besenyei,redbull).
equipe(chambliss,redbull).
equipe(maclean,mediterranean_racing_team).
equipe(mangold,cobra).
equipe(jones,matador).
equipe(bonhomme,matador).

aviao(lamb,mx2).
aviao(besenyei,mx2).
aviao(chambliss,edge540).
aviao(maclean,edge540).
aviao(mangold,edge540).
aviao(jones,edge540).
aviao(bonhomme,edge540).

circuito(istanbul).
circuito(budapest).
circuito(porto).

venceu(jones,porto).
venceu(mangold,budapest).
venceu(mangold,istanbul).

gates(9,istanbul).
gates(6,budapest).
gates(5,porto).

eganhou(X,Z) :- equipe(Y,X),venceu(Y,Z).
venceudois(X) :- venceu(X,Y),venceu(X,Z), Y \== Z.
circuito8g(X) :- gates(Y,X),Y > 8.
notedge(X) :- aviao(X,Y), Y \== edge540.


