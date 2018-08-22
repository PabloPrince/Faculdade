Program questao107 ;
var
x,y,z:real;
procedure lado(a,b,c:real);
begin
	if ((a = b) and (a = c)) then
	begin
		writeln('Equilátero');
	end
		else if (((a = b) and (a <> c)) or ((a <> b)	and (a = c))) then
		begin
			writeln('Isósceles');
		end
			else
			begin
				writeln('Escaleno');
			end;
end;					
 Begin
 	writeln('Digite o primeiro lado do triângulo: ');
 	readln(x);
 		writeln('Digite o segundo lado do triângulo: ');
 		readln(y);
 			writeln('Digite o terceiro lado do triângulo: ');
 			readln(z);
 	lado(x,y,z);
  
 End.
