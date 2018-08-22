Program questao98 ;
var
vn:array [1..20] of string;
vi:array [1..20] of integer;
vnota:array [1..20] of real;
cont:integer;
m:real;
 Begin
  for cont:=1 to 20 do
  begin
  	writeln(' Digite o ',cont,'. nome: ');
  	read(vn[cont]);
  end;
  	for cont:=1 to 20 do
	begin
		repeat
		writeln(' Digite a ',cont,'. idade: ');
		read(vi[cont]);
		until((vi[cont] > 0) and (vi[cont] < 120));
	end;
		for cont:=1 to 20 do
		begin
			repeat
			writeln(' Digite a ',cont,'. nota: ');
			read(vi[cont]);
			until((vi[cont] >= 0) and (vi[cont] <=10 ));
		end;
			for cont:=1 to 20 do
			begin
			if cont=1 then
			begin
				m:=vnota[cont];
			end;	
				if (vnota[cont] >= m) then
				begin
       				m:= vnota[cont];
   				end;
 					for cont:= 1 to 20 do
 					begin
     					if (vnota[cont] = m) then
     					begin
         						write ( vn[cont],' ');
         						write (vi[cont],' ');
         						writeln (' ');
       					end;
    					end;
			end;		    								  	
 End.
