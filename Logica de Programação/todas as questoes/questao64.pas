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
  write('A somatória de todos os números múltiplos de 5 entre 1 e 100 é: ',s);	
 End.
