Program questao125 ;
type mat= array [1..5,1..5] of integer;
var
m:mat;
contl,contc:integer;
function diagonal(m2:mat):integer;
var
p, contl, contc:integer;
begin
	for contl:=1 to 5 do
	begin
		for contc:=1 to 5 do
		begin
			if(contl = contc) then
			begin
				p:= p+ m2[contl,contc];
			end;
		end;
	end;
	diagonal:=p;
end;				
 Begin
 	for contl:=1 to 5 do
 	begin
 		for contc:=1 to 5 do
 		begin
 			m[contl,contc]:=random(10);
 		end;
	end;
		writeln('Matriz');
		for contl:= 1 to 5 do
		begin
			for contc:= 1 to 5 do
			begin
	
				write(m[contl,contc],' ');
			end;
			writeln(' ');
		end;		
	writeln('A soma da diagonal principal é: ',diagonal(m));	 	
  
 End.
