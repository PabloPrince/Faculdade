Program questao44 ;
var
x:integer;
 Begin
  write('Digite o n�mero que deu no dado(de seis lados): ');
  read(x);
  	if (x = 1) then
  	begin
  		write('N�mero um');
  	end
  		else if (x = 2) then
  		begin
  			write('N�mero dois');
  		end
  			else if (x = 3) then
  			begin
  				write('N�mero tr�s');
  			end
  	          	else if (x = 4) then
  				begin
  					write('N�mero quatro');
  				end
  			else if (x = 5) then
  			begin
  				write('N�mero cinco');
  			end
		else if (x = 6) then
  		begin
  			write('N�mero seis');
  		end
		  else
		  begin
		  	write('N�o h� esse n�mero em um dado');
		  end;	  	
 End.
