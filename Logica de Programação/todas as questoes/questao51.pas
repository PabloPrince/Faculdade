Program questao51 ;
var
	n1,n2,n3:real;	
 Begin
   write('Digite o primeiro n�mero ');
   read(n1);
   write('Digite o segundo n�mero ');
   read(n2);
   write('Digite o terceiro n�mero ');
   read(n3);
   	if (n1 < (n2+n3)) and (n2 < (n1+n3)) and (n3 < (n1+n2)) then
   	begin
   	write('Podem formar um tri�ngulo');
   	end
   	else
   	begin
   	write('N�o podem formar um tri�ngulo');
   	end;
 End.
