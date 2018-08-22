Program questao77 ;
var
v1:array [1..100] of integer;
cont:integer;
 Begin
   for cont:=1 to 100 do
   begin
   	v1[cont]:=random(100);
 	  end;
	writeln('Vetor normal');
   	for cont:=1 to 100 do
	begin
		write(v1[cont],' ');
	end;
		writeln(' ');
		writeln('Vetor alterado -3');
			for cont:=1 to 100 do
			begin
				write(v1[cont]-3,' ');
			end;	   	
 End.
