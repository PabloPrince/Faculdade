Program questao63 ;
var
cont,y:integer;
 Begin
 y:=0;
  for cont:=1 to 100 do
  begin
  	if ((cont mod 3) = 0) then
  	begin
  		y:=y+1;
  	end;
  end;
  write('tem exatamente ',y,' múltiplos de 3 entre 1 e 100');	  	
 End.
