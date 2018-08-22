Program questao32 ;
var
x,y:integer;
 Begin
  write('Digite o primeiro número: ');
  read(x);
  write('Digite o segundo número: ');
  read(y);
  	if (x > y) then
  	begin
  		write(y,' ',x);
  	end
	  else if (y > x) then
	  begin
	  	write(x,' ',y);
	  end
	  	else
		begin
		  write('Números iguais');
		end;  	
 End.
