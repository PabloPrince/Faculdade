progenitor(jose,joao).
progenitor(jose,ana).
progenitor(maria,joao).
progenitor(maria,ana).

progenitor(ana,helena).
progenitor(ana,joana).

progenitor(joao,mario).

progenitor(mario, carlos).
progenitor(helena, carlos).

masculino(jose).
masculino(joao).
masculino(mario).
masculino(carlos).

feminino(ana).
feminino(maria).
feminino(helena).
feminino(joana).

pai(X,Y) :- progenitor(X,Y), masculino(X).
mae(X,Y) :- progenitor(X,Y), feminino(X).

irm(X,Y) :- progenitor(Z,X), progenitor(Z,Y), X\=Y.%irmão ou irmã
irmao(X,Y) :- progenitor(Z,X), progenitor(Z,Y), X\=Y, masculino(X).
irma(X,Y) :- progenitor(Z,X), progenitor(Z,Y), X\=Y, feminino(X).

primo(X,Y) :- progenitor(Z,X), progenitor(W,Y), irm(Z,W), masculino(X).
prima(X,Y) :- progenitor(Z,X), progenitor(W,Y), irm(Z,W), feminino(X).

tio(X,Y) :- progenitor(Z,Y), irm(X,Z), masculino(X).
tia(X,Y) :- progenitor(Z,Y), irm(X,Z), feminino(X).

avomasculino(X,Y) :- pai(X,Z), progenitor(Z,Y), masculino(X).
avofeminino(X,Y) :- mae(X,Z), progenitor(Z,Y), feminino(X).

filh(X,Y) :- progenitor(Y,X).%filho ou filha.
filho(X,Y) :- progenitor(Y,X), masculino(X).
filha(X,Y) :- progenitor(Y,X), feminino(X).

descendente(X,Z) :- progenitor(X,Y), descendente(Y,Z).
ascendente(X,Z) :- filh(X,Y), ascendente(Y,Z).

q4(X):- tio(_,X).
q4b(L):- findall(X,tio(_,X),LR),list_to_set(LR,L).
