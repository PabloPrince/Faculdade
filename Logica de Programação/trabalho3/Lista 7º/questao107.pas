Program questao107 ;
var
x,y,z:real;
procedure lado(a,b,c:real);
begin
	if ((a = b) and (a = c)) then
	begin
		writeln('Equil�tero');
	end
		else if (((a = b) and (a <> c)) or ((a <> b)	and (a = c))) then
		begin
			writeln('Is�sceles');
		end
			else
			begin
				writeln('Escaleno');
			end;
end;					
 Begin
 	writeln('Digite o primeiro lado do tri�ngulo: ');
 	readln(x);
 		writeln('Digite o segundo lado do tri�ngulo: ');
 		readln(y);
 			writeln('Digite o terceiro lado do tri�ngulo: ');
 			readln(z);
 	lado(x,y,z);
  
 End.
