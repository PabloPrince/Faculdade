Program questao102 ;
var
a,b:integer;
procedure maiorvalor(x,y:integer);
begin
	if (x > y) then
	begin
		writeln('O primeiro número é maior.');
	end
		else if (x < y) then
		begin
			writeln('O segundo número é maior.');
		end
			else
			begin
				writeln('Os números são iguais.');
			end;
end;						
 Begin
 	writeln('Digite o primeiro número: ');
 	readln(a);
 	writeln('Digite o segundo número: ');
 	readln(b);
 	maiorvalor(a,b);
  
 End.
