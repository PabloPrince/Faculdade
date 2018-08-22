poe_ovos(tubarao).
poe_ovos(papagaio).
poe_ovos(jacare).
poe_ovos(cobra).
poe_ovos(lagarto).
poe_ovos(robalo).
mama(baleia).
mama(cachorro).
mama(homem).
mama(morcego).
voa(papagaio).
nada(baleia).
nada(tubarao).
nada(jacare).
nada(cachorro).
nada(homem).
nada(cobra).
nada(robalo).
tem_escamas(cobra).
tem_escamas(lagarto).
tem_escamas(robalo).
tem_penas(papagaio).
tem_pelos(cachorro).
tem_pelos(homem).
tem_pelos(morcego).

mamifero(X) :- mama(X),tem_pelos(X).
repitil(X) :- poe_ovos(X),not(voa(X)),((tem_escamas(X),X\==robalo);
				      (not(tem_escamas(X)),X\==tubarao)).
ave(X) :- poe_ovos(X),voa(X),tem_penas(X).
peixe(X) :- poe_ovos(X),nada(X),((tem_escamas(X),X\==cobra);not(tem_escamas(X)),not(repitil(X))).
