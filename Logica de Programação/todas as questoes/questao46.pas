Program questao46 ;
var
a,b,c,d,e:real;
 Begin
  write('Digite o primeiro n�mero: ');
  read(a);
  write('Digite o segundo n�mero: ');
  read(b);
  write('Digite o terceiro n�mero: ');
  read(c);
  	d := (3*(a+b)/(a*c)-c+b);
  	e := (a*b*c);
  		if (d > e) then
  		begin
  			write('A equa��o (3*(a+b)/(a*c)-c+b produz um valor maior que o produto de a,b e c');
  		end
		  else
		  begin
		  	write('A equa��o (3*(a+b)/(a*c)-c+b produz um valor menor que o produto de a,b e c')
		  end;	
 End.
