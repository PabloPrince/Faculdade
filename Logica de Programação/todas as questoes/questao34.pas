Program questao34 ;
var
a,b,f,d:real;
 Begin
  write('Digite um número: ');
  read(a);
  write('Digite outro número: ');
  read(b);
  d := (a/b);
  f := (frac(d));
  	if (f = 0) then
  	begin
  		write(a:2:2,' é divisível por ',b:2:2);
  	end
	  else
	  begin
	  	write(a:2:2,' não é divisível ',b:2:2);
	  end;	  	
 End.
