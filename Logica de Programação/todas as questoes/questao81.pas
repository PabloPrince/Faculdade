Program questao81 ;
var
vetor1,vetor2,vetormult:array [1..20] of integer;
cont:integer;
 Begin
  for cont:=1 to 20 do
  begin
  	writeln(' Digite o ',cont,'. n�mero: ');
  	readln(vetor1[cont]);
  end;
  	for cont:=1 to 20 do
  	begin
  		writeln('  Digite o ',cont,'. n�mero: ');
  		readln(vetor2[cont]);
  	end;
		for cont:=1 to 20 do
		begin
			vetormult[cont]:=vetor1[cont]*vetor2[cont];
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
				writeln('A multiplica��o do primeiro vetor com o segundo');
			for cont:=1 to 20 do
			begin
				write(vetormult[cont],' ');
			end;			
 End.
