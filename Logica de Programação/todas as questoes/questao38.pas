Program questao38 ;
var
x,y,z:real;
 Begin
  write('Digite um número: ');
  read(x);
  	if (x > 0) then
  	begin
  		y := sqr(x);
  		z := sqrt(x);
  		write('O quadrado de ',x:2:2,' é: ',y:2:2,' e a raiz é: ',z:2:2);
  	end;	
 End.
