Program questao75 ;
var
v: array [1..100] of integer;
cont:integer;
 Begin
   for cont:= 1 to 100 do
   begin
   	v[cont]:=random(100);
   end;
   	for cont:=1 to 100 do
	begin
		writeln(v[cont]);
	end;	   	
 End.
