Program questao34 ;
var
a,b,f,d:real;
 Begin
  write('Digite um n�mero: ');
  read(a);
  write('Digite outro n�mero: ');
  read(b);
  d := (a/b);
  f := (frac(d));
  	if (f = 0) then
  	begin
  		write(a:2:2,' � divis�vel por ',b:2:2);
  	end
	  else
	  begin
	  	write(a:2:2,' n�o � divis�vel ',b:2:2);
	  end;	  	
 End.
