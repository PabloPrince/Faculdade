Program questao32 ;
var
x,y:integer;
 Begin
  write('Digite o primeiro n�mero: ');
  read(x);
  write('Digite o segundo n�mero: ');
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
		  write('N�meros iguais');
		end;  	
 End.
