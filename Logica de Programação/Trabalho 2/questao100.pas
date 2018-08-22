Program questao100 ;
var
v:array [1..100] of integer;
cont:integer;
 Begin
  for cont:=1 to 100 do
  begin
  	if (cont mod 2 = 0) then
  	begin	
  		repeat
  		v[cont]:=random(100);
  		until(v[cont] mod 2 = 0);
  	end
	  	else
		begin
			repeat
			v[cont]:=random(100);
			until(v[cont] mod 2 <> 0);
		end;
  end;
  	for cont:=1 to 100 do
	begin
		writeln(v[cont]);
	end;	  			  	
 End.
