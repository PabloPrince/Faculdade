Program questao83 ;
var
v:array [1..20] of integer;
cont:integer;
 Begin
  for cont:= 1 to 20 do
  begin
  	repeat
  		v[cont]:= random(100);
  	until((v[cont] >= 0) and (v[cont] <= 99));
  end;
  	for cont:=1 to 20 do
	begin
		write(v[cont],' ');
	end;	  	  	
 End.
