% Autor:
% Data: 22/03/2018

% acc := 0;
% while not eh_vazia(L)
%    begin
%      L := cauda(L);
%      acc : acc + 1;
%    end
% resultado := acc;
      
comprAcc(L,C) :- compr3(L, 0, C).
compr3([X|Xs], Acc, C) :- compr3(Xs, Acc+1, C).
compr3([], Acc, Acc).