pai(jose,joao).
pai(jose,ana).
mae(maria,joao).
mae(maria,ana).

mae(ana,helena).
mae(ana,joana).

pai(joao,mario).

pai(mario, carlos).
mae(helena, carlos).

masculino(jose).
masculino(joao).
masculino(mario).
masculino(carlos).

feminino(ana).
feminino(maria).
feminino(helena).
feminino(joana).

progenitor(X,Y) :- pai(X,Y).
progenitor(X,Y) :- mae(X,Y).

irm(X,Y) :- progenitor(Z,X), progenitor(Z,Y), X\=Y.%irm�o ou irm�
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



