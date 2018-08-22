Program questao84 ;
var
v:array [1..20] of integer;
cont:integer;
 Begin
  for cont:= 1 to 20 do
  begin
  	repeat
  		v[cont]:= random(20);
  	until(v[cont] mod 2 = 0);
  end;
  	for cont:=1 to 20 do
	begin
		write(v[cont],' ');
	end;	  	  	
 End.
