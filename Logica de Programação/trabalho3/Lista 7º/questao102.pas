Program questao102 ;
var
a,b:integer;
procedure maiorvalor(x,y:integer);
begin
	if (x > y) then
	begin
		writeln('O primeiro n�mero � maior.');
	end
		else if (x < y) then
		begin
			writeln('O segundo n�mero � maior.');
		end
			else
			begin
				writeln('Os n�meros s�o iguais.');
			end;
end;						
 Begin
 	writeln('Digite o primeiro n�mero: ');
 	readln(a);
 	writeln('Digite o segundo n�mero: ');
 	readln(b);
 	maiorvalor(a,b);
  
 End.
