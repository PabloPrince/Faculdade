Program questao33 ;
var
x,y,z:integer;
 Begin
  write('Digite o primeiro n�mero: ');
  read(x);
  write('Digite o segundo n�mero: ');
  read(y);
  write('Digite o terceiro n�mero: ');
  read(z);
  	if ((x > y) and (x > z)) then
  	begin
  		write('O maior n�mero �: ',x);
  	end
	  else if ((y > x) and (y > z)) then
	  begin
	  	write(y,' � o maior n�mero');
	  end
	  	else if ((z > x) and (z > y)) then
		begin
			write(z,' � o maior n�mero');
		end
			else
			begin
				write('Os tr�s n�meros s�o iguais');
			end;  	
 End.
