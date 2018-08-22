Program soma_linha_coluna ;
var
mat:array [1..5,1..5] of integer;
contl,contc,somal,somac,somatotal:integer;
 Begin
  for contl:=1 to 5 do
  begin
  	for contc:=1 to 5 do
  	begin
  		mat[contl,contc]:=random(10);
  	end;
  end;
  	for contl:=1 to 5 do
	begin
		for contc:=1 to 5 do
		begin
			if (contl=3) then
			begin
				somal:=(mat[contl,contc]+somal);
			end;
		end;
	end;
		for contl:=1 to 5 do
		begin
			for contc:=1 to 5 do
			begin
				if (contc=2) then
				begin
					somac:=(mat[contl,contc]+somac);
				end;
			end;
		end;
		writeln('A soma da linha 3 é: ',somal);
		writeln('A soma da coluna 2 é: ',somac);
			if(somal > somac) then
			begin
			writeln('A soma da linha 3 é maior que a soma da coluna 2');
			end
				else
				begin
				writeln('A soma da coluna 2 é maior que a soma da linha 3');
				end;
				somatotal:=(somal+somac);
					if (somatotal mod 2 = 0) then
					begin
						writeln('A soma das somas é par');
					end
						else
						begin
							writeln('A soma das somas é impar');
						end;					  	  	
 End.
