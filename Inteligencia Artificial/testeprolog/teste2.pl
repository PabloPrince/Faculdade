nasceu(joao,pelotas).
nasceu(jean,paris).
fica(pelotas,riograndedosul).
fica(paris,franca).

gaucho(X) :- nasceu(X,Y),fica(Y,riograndedosul).
