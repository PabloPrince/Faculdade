Program questao52 ;
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
   	if ((n1=n2) and (n1<>n3) and (n2<>n3)) or ((n2=n3) and (n2<>n1) and (n3<>n1)) or ((n1=n3) and (n1<>n2) and (n3<>n2)) then
   	begin
   	write('Isórceles');
   	end;
   		if (n1=n2) and (n2=n3) and (n1=n3) then
   		begin
   		write('Equilátero');
   		end;
   	if (n1<>n2) and (n1<>n3) and (n2<>n3) then
   	begin
   	write('Escaleno');
   	end;	
   end;
 End.
