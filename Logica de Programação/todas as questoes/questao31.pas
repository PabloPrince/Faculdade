Program questao31 ;
var
x,y:real;
 Begin
  write('Digite um número: ');
  read(x);
   y := int(x);
   	if (y = 3) then
   	begin
   		write('A parte inteira de ',x:2:2,' é igual a 3');
   	end
	   else
	   begin
	   write('A parte inteira de ',x:2:2,' não é igual a 3');
	   end;	
 End.
