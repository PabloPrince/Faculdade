Program questao60 ;
var
cont,x,y:integer;
 Begin
  for cont:=1 to 20 do
  begin
  	write('Digite o ',cont,' n�mero: ');
  	read(x);
  		if ((x mod 2) = 0) then
  		begin
  			y:=y+1;
  		end;
  end;
  write('A quantidade de n�meros pares digitados foi: ',y);		  	
 End.
