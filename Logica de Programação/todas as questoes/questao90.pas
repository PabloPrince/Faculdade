Program questao90 ;
var
m:array [1..4,1..4] of integer;
maior,linha,coluna,contl,contc:integer;
 Begin
  for contl:=1 to 4 do
  begin
  	for contc:=1 to 4 do
  	begin
  		m[contl,contc]:=random(9);
  	end;
  end;
  	for contl:=1 to 4 do
	begin
		for contc:=1 to 4 do
		begin
			if ((contl=1) and (contc=1)) then
			begin
				maior := m[contl,contc];
				linha:=contl;
				coluna:=contc;
			end
				else if (m[contl,contc] > maior) then
				begin
					maior:= m[contl,contc];
					linha:=contl;
					coluna:=contc;
				end;
		end;
	end;
	write('O maior elemento da matriz é: ',maior,' sua linha é: ',linha,' e sua coluna é: ',coluna);									  	
 End.
