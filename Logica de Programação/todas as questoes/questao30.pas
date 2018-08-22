Program questao30 ;
var
x,y:real;
 Begin
  write('Digite um número: ');
  read(x);
  y := (x*2);
  	if (y > 7) then
  	begin
  		write(y:2:2,' é maior que 7');
  	end
  		else if (y < 7) then
  		begin
  			write(y:2:2,' é menor que 7');
  		end
  			else
  			begin
  				write(y:2:2,' é igual a 7');
  			end;
 End.
