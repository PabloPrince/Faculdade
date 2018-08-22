Program questao94 ;
var
m:array [1..5,1..4] of real;
contl,contc:integer;
 Begin
  for contl:=1 to 5 do
  begin
  	for contc:=1 to 4 do
  	begin
  		m[contl,contc]:=random(20);
  	end;
  end;
  	writeln('Matriz normal');
  	for contl:=1 to 5 do
	begin
		for contc:=1 to 4 do
		begin
			write(m[contl,contc]:2:2,' ');
		end;
		writeln(' ');
	end;
		writeln(' ');
		writeln('Matriz com a segunda linha aumentada +3');
		for contl:=1 to 5 do
  		begin
  			for contc:=1 to 4 do
  			begin
  				if (contl=2) then
  				begin
  					m[contl,contc]:=m[contl,contc]+3;
  				end;	
  			end;
  		end;
  			for contl:=1 to 5 do
			begin
				for contc:=1 to 4 do
				begin
					write(m[contl,contc]:2:2,' ');
				end;
				writeln(' ');
			end;
 End.
