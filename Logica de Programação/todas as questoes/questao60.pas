Program questao60 ;
var
cont,x,y:integer;
 Begin
  for cont:=1 to 20 do
  begin
  	write('Digite o ',cont,' número: ');
  	read(x);
  		if ((x mod 2) = 0) then
  		begin
  			y:=y+1;
  		end;
  end;
  write('A quantidade de números pares digitados foi: ',y);		  	
 End.
