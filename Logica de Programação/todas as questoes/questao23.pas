Program questao23 ;
var
n1,n2:integer;
 Begin
   write('Digite um n�mero: ');
   read(n1);
   write('Digite outro n�mero: ');
   read(n2);
   	if (n1>n2) then
   	begin
   		write('O maior �: ',n1);
   	end
	   else if (n2>n1) then
	     begin
	   		write('O maior �: ',n2);
		end
			else
			begin
				write('N�meros iguais');
			end;	   	
 End.
