Program questao24 ;
var
n1,n2,n3,n4:integer;
 Begin
  write('Digite o primeiro número: ');
  read(n1);
  write('Digite o segundo número: ');
  read(n2);
  write('Digite o terceiro número: ');
  read(n3);
  write('Digite o quarto número: ');
  read(n4);
  	if ((n1+n2) > (n3+n4)) then
  	begin
  		write('O maior número é: ',n1+n2);
  	end
	  else if ((n1+n2) < (n3+n4)) then	
       begin
       	write('O maior número é: ',n3+n4);
       end
	  	else
		begin
			write('Números iguais');
		end;	  	
 End.  
 
