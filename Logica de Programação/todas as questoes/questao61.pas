Program questao61 ;
var
cont,x,y:integer;
 Begin
  for cont:=1 to 5 do
  begin
  	write('Digite o ',cont,' n�mero: ');
  	read(x);
  		y:= sqr(x);
  		writeln('O quadrado desse n�mero �: ',y);
  end;		
 End.
