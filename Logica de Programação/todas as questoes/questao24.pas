Program questao24 ;
var
n1,n2,n3,n4:integer;
 Begin
  write('Digite o primeiro n�mero: ');
  read(n1);
  write('Digite o segundo n�mero: ');
  read(n2);
  write('Digite o terceiro n�mero: ');
  read(n3);
  write('Digite o quarto n�mero: ');
  read(n4);
  	if ((n1+n2) > (n3+n4)) then
  	begin
  		write('O maior n�mero �: ',n1+n2);
  	end
	  else if ((n1+n2) < (n3+n4)) then	
       begin
       	write('O maior n�mero �: ',n3+n4);
       end
	  	else
		begin
			write('N�meros iguais');
		end;	  	
 End.  
 
