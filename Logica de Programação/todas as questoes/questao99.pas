Program questao99 ;
var
notas:array [1..10,1..3] of real;
medias:array[1..10] of real;
contl,contc:integer;
 Begin
  for contl:=1 to 10 do
  begin
  	for contc:=1 to 3 do
  	begin
  		repeat
  		write('Digite a ',contc,'. nota do ',contl,'. aluno: ');
  		read(notas[contl,contc]);
  		until((notas[contl,contc] >= 0) and (notas[contl,contc] <= 10));
  	end;
  end;
  	for contl:=1 to 10 do
	begin
		for contc:=1 to 3 do
		begin
			medias[contl]:=notas[contl,contc]+medias[contl];
		end;
	end;
		for contl:=1 to 10 do
		begin
			medias[contl]:=(medias[contl]/3);
		end;		
			writeln('Matriz das notas');
		for contl:=1 to 10 do
		begin
			for contc:=1 to 3 do
			begin
				write(notas[contl,contc]:2:2,' ');
			end;
			writeln(' ');
		end;
			writeln('Média das notas');
			for contl:=1 to 10 do
			begin
				writeln(medias[contl]:2:2,' ');
			end;						  	  	
 End.
