Program questao87 ;
var
m:array [1..4,1..5] of integer;
s,contl,contc:integer;
 Begin
  for contl:=1 to 4 do
  begin
  	for contc:=1 to 5 do
  	begin
  		repeat
  			write('Digite um número: '); 
  			read(m[contl,contc]);
  		until(m[contl,contc] mod 2 = 0);	
  	end;
  end;
  	for contl:=1 to 4 do
	begin
		for contc:=1 to 5 do
		begin
			write(m[contl,contc],' ');
		end;
		writeln(' ');
	end;				  	  	
 End.
