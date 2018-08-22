Program questao91 ;
var
m:array [1..4,1..5] of integer;
par,impar,contl,contc:integer;
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
				if (m[contl,contc] mod 2 = 0) then
				begin
					par:=par+1;
				end
					else
					begin
						impar:=impar+1;
					end;
			end;
		end;
		writeln('A quantidade de números pares é: ',par);
		writeln('A quantidade de números impares é: ',impar);							  	  	
 End.
