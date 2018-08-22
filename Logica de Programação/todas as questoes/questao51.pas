Program questao51 ;
var
	n1,n2,n3:real;	
 Begin
   write('Digite o primeiro número ');
   read(n1);
   write('Digite o segundo número ');
   read(n2);
   write('Digite o terceiro número ');
   read(n3);
   	if (n1 < (n2+n3)) and (n2 < (n1+n3)) and (n3 < (n1+n2)) then
   	begin
   	write('Podem formar um triângulo');
   	end
   	else
   	begin
   	write('Não podem formar um triângulo');
   	end;
 End.
