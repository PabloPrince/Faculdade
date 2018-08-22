Program questao93 ;
var
m:array [1..4,1..4] of integer;
s,contl,contc:integer;
 Begin
  for contl:=1 to 4 do
  begin
  	for contc:=1 to 4 do
  	begin
  		m[contl,contc]:=random(20);
  	end;
  end;
  	for contl:=1 to 4 do
	begin
		for contc:=1 to 4 do
		begin
			write(m[contl,contc],' ');
		end;
		writeln(' ');
	end;
		for contl:=1 to 4 do
		begin
			for contc:=4 downto 1 do
			begin
				if (contl+contc = 5) then
				begin
					s:=s+m[contl,contc];
				end;
			end;
		end;
		writeln('A soma dos elementos da diagonal secundária é: ',s);					  	  	
 End.
