Program questao38 ;
var
x,y,z:real;
 Begin
  write('Digite um n�mero: ');
  read(x);
  	if (x > 0) then
  	begin
  		y := sqr(x);
  		z := sqrt(x);
  		write('O quadrado de ',x:2:2,' �: ',y:2:2,' e a raiz �: ',z:2:2);
  	end;	
 End.
