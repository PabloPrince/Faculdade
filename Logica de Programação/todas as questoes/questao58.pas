Program questao58 ;
var
x,y,cont:integer;
n:string;
 Begin
 x := 0;
 y := 0;
  for cont:=1 to 10 do
  begin
  write('Digite um nome: ');
  read(n);
  	if (n = 'jo�o') then
  	begin
  		x := x+1;
  	end
	  else if (n = 'maria') then
	  begin
	  	y :=y+1;
	  end;
  end;
  writeln('O nome maria foi digitado: ',y,' vezes.');
  writeln('O nome jo�o foi digitado: ',x,' vezes.');	  	  	
 End.
