Program questao86 ;
var
m:array [1..4,1..5] of integer;
s,contl,contc:integer;
 Begin
  for contl:=1 to 4 do
  begin
  	for contc:=1 to 5 do
  	begin
  		m[contl,contc]:=random(20);
  	end;
  end;
  	for contl:=1 to 4 do
	begin
		for contc:=1 to 5 do
		begin
			write(m[contl,contc],' ');
		end;
		writeln(' ');
	end;
		for contl:=1 to 4 do
		begin
			for contc:=1 to 5 do
			begin
				s:=s+m[contl,contc];
			end;
		end;
		writeln('A soma de todos os elementos da matriz �: ',s);				  	  	
 End.
