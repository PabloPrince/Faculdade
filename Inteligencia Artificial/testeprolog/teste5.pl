% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

nota(joao,5.0).
nota(maria,6.0).
nota(joana,8.0).
nota(mariana,9.0).
nota(cleuza,8.5).
nota(jose,6.5).
nota(jaoquim,4.5).
nota(mara,4.0).
nota(mary,10.0).

aprovado(X) :- nota(X,Y), Y >= 7,Y =< 10.
recuperacao(X) :- nota(X,Y), Y >= 5,Y =< 6.9.
reprovado(X) :- nota(X,Y), Y >= 0,Y =< 4.9.

aluno(X) :- (aprovado(X),write(aprovado));(recuperacao(X),write(recuperacao));(reprovado(X),write(reprovado)).
