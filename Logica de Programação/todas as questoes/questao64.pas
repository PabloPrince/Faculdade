Program questao64 ;
var
cont,x,s:integer;
 Begin
  for cont:=1 to 100 do
  begin
  	if ((cont mod 5) = 0) then
  	begin
  		s:=s+cont;
  	end;
  end;
  write('A somat�ria de todos os n�meros m�ltiplos de 5 entre 1 e 100 �: ',s);	
 End.
