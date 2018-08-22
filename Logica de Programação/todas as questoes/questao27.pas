Program questao27 ;
var
x:integer;
 Begin
  write('Digite um número: ');
  read(x);
  	if ((x mod 2) = 0) then
  	begin
  		write('O número ',x,' é par');
  	end
	  else
	  begin
	  	write('O número ',x,' é impar');
	  end;	  	
 End.
