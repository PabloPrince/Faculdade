Program questao31 ;
var
x,y:real;
 Begin
  write('Digite um n�mero: ');
  read(x);
   y := int(x);
   	if (y = 3) then
   	begin
   		write('A parte inteira de ',x:2:2,' � igual a 3');
   	end
	   else
	   begin
	   write('A parte inteira de ',x:2:2,' n�o � igual a 3');
	   end;	
 End.
