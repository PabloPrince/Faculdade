Program questao33 ;
var
x,y,z:integer;
 Begin
  write('Digite o primeiro número: ');
  read(x);
  write('Digite o segundo número: ');
  read(y);
  write('Digite o terceiro número: ');
  read(z);
  	if ((x > y) and (x > z)) then
  	begin
  		write('O maior número é: ',x);
  	end
	  else if ((y > x) and (y > z)) then
	  begin
	  	write(y,' é o maior número');
	  end
	  	else if ((z > x) and (z > y)) then
		begin
			write(z,' é o maior número');
		end
			else
			begin
				write('Os três números são iguais');
			end;  	
 End.
