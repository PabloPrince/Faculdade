Program questao68 ;
var
maior,x:real;
cont:integer;
 Begin
  for cont:=1 to 10 do
  begin
  	writeln('Digite a altura do prédio: ');
  	readln(x);
  		if (cont = 1) then
  		begin
  			maior:= x;
  		end;
	if (x > maior) then
	begin
		maior := x;
	end;
  end;
  writeln('O maior prédio tem a altura de: ',maior:2:2);			  	
 End.
