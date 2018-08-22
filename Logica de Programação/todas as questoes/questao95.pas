Program questao95 ;
var
m:array [1..4,1..5] of real;
contl,contc:integer;
 Begin
  for contl:=1 to 4 do
  begin
  	for contc:=1 to 5 do
  	begin
  		m[contl,contc]:=random(20);
  	end;
  end;
  	writeln('Matriz normal');
  	for contl:=1 to 4 do
	begin
		for contc:=1 to 5 do
		begin
			write(m[contl,contc]:2:2,' ');
		end;
		writeln(' ');
	end;
		writeln(' ');
		writeln('Matriz com a 1.coluna +2, 3.coluna +3, 5.coluna +4');
		for contl:=1 to 4 do
  		begin
  			for contc:=1 to 5 do
  			begin
  				if (contc=1) then
  				begin
  					m[contl,contc]:=m[contl,contc]+2;
  				end;
					if (contc=3) then
  					begin
  						m[contl,contc]:=m[contl,contc]+3;
  					end;
						if (contc=5) then
  						begin
  							m[contl,contc]:=m[contl,contc]+4;
  						end;	
  			end;
  		end;
  			for contl:=1 to 4 do
			begin
				for contc:=1 to 5 do
				begin
					write(m[contl,contc]:2:2,' ');
				end;
				writeln(' ');
			end;
 End.
