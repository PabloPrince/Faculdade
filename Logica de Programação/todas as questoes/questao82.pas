Program questao82 ;
var
v:array [1..20] of integer;
cont:integer;
 Begin
  for cont:=1 to 20 do
  begin
  	v[cont]:=random(20);
  end;
  	for cont:=1 to 20 do
	begin
		if (v[cont] mod 2 = 0) then
		begin
			write(v[cont],' ');
		end;
	end;		  	
 End.
