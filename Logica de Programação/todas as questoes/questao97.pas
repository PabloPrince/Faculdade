Program questao97 ;
var
m:array [1..5,1..5] of integer;
contl,s,contc:integer;
 Begin
  for contl:= 1 to 5 do
  begin
  	for contc:=1 to 5 do
  	begin
  		m[contl,contc]:=random(10);
  	end;
  end;
  	for contl:=5 downto 1 do
	begin
		for contc:=1 to 5 do
		begin
			if (contl-contc=-1) then
			begin	
				s:=s+m[contl,contc];		
			end;
		end;
	end;
		for contl:=1 to 5 do
		begin
			for contc:=1 to 5 do
			begin
				write(m[contl,contc],' ');
			end;
			writeln(' ');
		end;
		write('A soma dos números da diagonal abaixo da principal é: ',s);					  	  	
 End.          
