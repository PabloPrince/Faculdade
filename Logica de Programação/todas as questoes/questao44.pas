Program questao44 ;
var
x:integer;
 Begin
  write('Digite o número que deu no dado(de seis lados): ');
  read(x);
  	if (x = 1) then
  	begin
  		write('Número um');
  	end
  		else if (x = 2) then
  		begin
  			write('Número dois');
  		end
  			else if (x = 3) then
  			begin
  				write('Número três');
  			end
  	          	else if (x = 4) then
  				begin
  					write('Número quatro');
  				end
  			else if (x = 5) then
  			begin
  				write('Número cinco');
  			end
		else if (x = 6) then
  		begin
  			write('Número seis');
  		end
		  else
		  begin
		  	write('Não há esse número em um dado');
		  end;	  	
 End.
