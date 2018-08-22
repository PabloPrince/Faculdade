Program questao49 ;
var
x:real;
 Begin
  write('Digite seu peso: ');
  read(x);
  	if (x <= 50) then
  	begin
  		write('Você é magro(a)');
  	end;
  		if ((x > 50) and (x < 80)) then
  		begin
  			write('Você é normal');
  		end;
  			if (x >= 80) then
  			begin
  				write('Você é gordo(a)');
  			end;
 End.
