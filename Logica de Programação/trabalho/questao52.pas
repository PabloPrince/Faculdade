Program questao52 ;
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
   	if ((n1=n2) and (n1<>n3) and (n2<>n3)) or ((n2=n3) and (n2<>n1) and (n3<>n1)) or ((n1=n3) and (n1<>n2) and (n3<>n2)) then
   	begin
   	write('Is�rceles');
   	end;
   		if (n1=n2) and (n2=n3) and (n1=n3) then
   		begin
   		write('Equil�tero');
   		end;
   	if (n1<>n2) and (n1<>n3) and (n2<>n3) then
   	begin
   	write('Escaleno');
   	end;	
   end;
 End.
