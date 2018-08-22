Program questao101 ;
var
m:array [1..8,1..7] of integer;
contl,sl,sc,d,contc:integer;
 Begin
  for contl:=1 to 8 do
  begin
  	for contc:=1 to 7 do
  	begin
  		m[contl,contc]:=random(20);
  	end;
  end;
  	for contl:=1 to 8 do
	begin
		for contc:=1 to 7 do
		begin
			if (contl mod 2 = 0) then
			begin
				sl:=m[contl,contc]+sl;
			end;
				if (contc mod 2 <> 0) then
				begin
					sc:=m[contl,contc]+sc;
				end;
		end;
	end;
		if (sl > sc) then
		begin
			writeln('A maior soma é a dos elementos das linhas pares');
			d:=sl-sc;
		end
			else
			begin
				writeln('A maior soma é a dos elementos das colunas ímpares');
				d:=sc-sl;
			end;
		writeln('A diferença das somas é: ',d);								  	  	
 End.
