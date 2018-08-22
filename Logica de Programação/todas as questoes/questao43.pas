Program questao43 ;
var
x:integer;
 Begin
  write('Digite um número: ');
  read(x);
  	if (x > 0) then
  	begin
  		if ((x mod 2) = 0) then
  		begin
  			write(x,' é positivo e par');
  		end
		  else
		  begin
		  	write(x,' é positivo e impar');
		  end;	  	
  	end
  		else if (x < 0) then
  		begin
  			if ((x mod 2) = 0) then
  			begin
  				write(x,' é negativo e par');
  			end
		  		else
		  		 begin
		  			write(x,' é negativo e impar');
		 		 end;	  	
  		end
  			else
  			begin
  				write(x,' é neutro');
  			end;	
 End.
