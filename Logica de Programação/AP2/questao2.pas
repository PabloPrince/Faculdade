Program ordemcrescente ;
var
vet:array [1..50] of integer;
cont:integer;
 Begin
  for cont:=1 to 50 do
  begin
  	repeat
  		repeat
  			vet[cont]:=random(100);
  		until(vet[cont] mod 2 = 0);
	until(vet[cont] > vet[cont-1]);
  end;		  	
 End.
