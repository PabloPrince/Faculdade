Program questao39 ;
var
x:integer;
 Begin
  write('Digite um número: ');
  read(x);
  	if ((x mod 2) = 0)  then
  	begin
  		if (x > 20) then
  		begin
  			write('A metade de ',x,' é: ',x/2:2:2);
  		end;
  			if (x < 20) then
  			begin
  				write('O dobro de ',x,' é: ',x*2);
  			end;
  	end;		
 End.
