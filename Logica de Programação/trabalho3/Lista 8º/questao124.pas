Program questao124 ;
type v=array [1..20] of real;
var
vet:v;
cont:integer;
function maior(vet2:v):real;
var
m:real;
cont:integer;
begin
	for cont:= 1 to 20 do
	begin
		if cont = 1 then
		begin
			m:= vet2[cont];
		end
			else	if (vet2[cont] > m) then
			begin
				m:= vet2[cont];
			end;				
	end;
	maior:=m;
end;					
 Begin
 	for cont:= 1 to 20 do
 	begin
 		writeln('Digite o ',cont,'. número: ');
 		readln(vet[cont]);	
 	end;
	 	writeln('O maior número do vetor é: ',maior(vet):2:2);	
  
 End.
