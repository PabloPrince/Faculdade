Program questao30 ;
var
x,y:real;
 Begin
  write('Digite um n�mero: ');
  read(x);
  y := (x*2);
  	if (y > 7) then
  	begin
  		write(y:2:2,' � maior que 7');
  	end
  		else if (y < 7) then
  		begin
  			write(y:2:2,' � menor que 7');
  		end
  			else
  			begin
  				write(y:2:2,' � igual a 7');
  			end;
 End.
