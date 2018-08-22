% Autor:
% Data: 22/03/2018

append1([], Bs, Bs).
append1([A|As], Bs, [A|AsBs]):- append1(As, Bs, AsBs).