Program questao80 ;
var
vetor1,vetor2,vetorsoma:array [1..20] of integer;
cont:integer;
 Begin
  for cont:=1 to 20 do
  begin
  	writeln(' Digite o ',cont,'. número: ');
  	readln(vetor1[cont]);
  end;
  	for cont:=1 to 20 do
  	begin
  		writeln('  Digite o ',cont,'. número: ');
  		readln(vetor2[cont]);
  	end;
		for cont:=1 to 20 do
		begin
			vetorsoma[cont]:=vetor1[cont]+vetor2[cont];
		end;
		writeln(' O primeiro vetor');
			for cont:=1 to 20 do
			begin
				write(vetor1[cont],' ');
			end;
			writeln(' ');
			writeln('O segundo vetor');
				for cont:=1 to 20 do
				begin
					write(vetor2[cont],' ');
				end;
				writeln(' ');
				writeln('A soma do primeiro vetor com o segundo');
			for cont:=1 to 20 do
			begin
				write(vetorsoma[cont],' ');
			end;			
 End.
