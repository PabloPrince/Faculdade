Program questao61 ;
var
cont,x,y:integer;
 Begin
  for cont:=1 to 5 do
  begin
  	write('Digite o ',cont,' número: ');
  	read(x);
  		y:= sqr(x);
  		writeln('O quadrado desse número é: ',y);
  end;		
 End.
