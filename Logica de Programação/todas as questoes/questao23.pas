Program questao23 ;
var
n1,n2:integer;
 Begin
   write('Digite um número: ');
   read(n1);
   write('Digite outro número: ');
   read(n2);
   	if (n1>n2) then
   	begin
   		write('O maior é: ',n1);
   	end
	   else if (n2>n1) then
	     begin
	   		write('O maior é: ',n2);
		end
			else
			begin
				write('Números iguais');
			end;	   	
 End.
