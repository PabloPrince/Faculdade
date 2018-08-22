Program questao105 ;
var
x:integer;
procedure extenso(a:integer);
begin
	if (a=0) then
	begin
		writeln('Zero');
	end
		else if (a=1) then
		begin
			writeln('Um');
		end
			else if (a=2) then
			begin
				writeln('Dois');
			end
				else if (a=3) then
				begin
					writeln('Três');
				end
					else if (a=4) then
					begin
						writeln('Quatro');
					end
						else if (a=5) then
						begin
							writeln('Cinco');
						end
					else if (a=6) then
					begin
						writeln('Seis');
					end
				else if (a=7) then
				begin
					writeln('Sete');
				end
			else if (a=8) then
			begin
				writeln('Oito');
			end
		else if (a=9) then
		begin
			writeln('Nove');
		end
	else if (a=10) then
	begin
		writeln('Dez');
	end
		else
		begin
			writeln(a);
		end;
end;									
 Begin
 	writeln('Digite um número: ');
 	readln(x);
 	extenso(x);
  
 End.
