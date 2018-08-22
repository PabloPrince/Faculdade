corpo_c(planetas).
corpo_c(estrelas).
corpo_c(cometas).
posc(cometas).

venus(X) :- corpo_c(X),not(posc(X)), X\==estrelas.
