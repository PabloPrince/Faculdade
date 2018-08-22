Program questao106 ;
var
x:integer;
procedure tabuada(a:integer);
var
cont:integer;
begin
	if ((a >= 1) and (a <= 9)) then
	begin
		for cont:=1 to 9 do
		begin
			writeln(a,'x',cont,'=',a*cont);
		end;
	end
		else
		begin
			writeln('Este algoritmo não imprime a tabuada deste número.');
		end;			
end;		
 Begin
 	writeln('Digite um número: ');
	 readln(x);
	 tabuada(x); 
 End.
