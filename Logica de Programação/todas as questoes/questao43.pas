Program questao43 ;
var
x:integer;
 Begin
  write('Digite um n�mero: ');
  read(x);
  	if (x > 0) then
  	begin
  		if ((x mod 2) = 0) then
  		begin
  			write(x,' � positivo e par');
  		end
		  else
		  begin
		  	write(x,' � positivo e impar');
		  end;	  	
  	end
  		else if (x < 0) then
  		begin
  			if ((x mod 2) = 0) then
  			begin
  				write(x,' � negativo e par');
  			end
		  		else
		  		 begin
		  			write(x,' � negativo e impar');
		 		 end;	  	
  		end
  			else
  			begin
  				write(x,' � neutro');
  			end;	
 End.
