Program questao79 ;
var
n:array [1..50] of real;
cont:integer;
maior:real;
 Begin
  for cont:=1 to 50 do
  begin
  	repeat
  		write('Digite a ',cont,' nota: ');
  		read(n[cont]);
  	until((n[cont] >= 0) and (n[cont] <=10));	
  end;
  	for cont:=1 to 50 do
	begin
		writeln(n[cont]:2:2);
	end;
		for cont:=1 to 50 do
		begin
			if cont=1 then
			begin
				maior:= n[cont];
			end
				else if (n[cont] > maior) then
				begin
					maior := n[cont];
				end;
		end;		
	writeln('A maior nota digitada foi: ',maior:2:2);						  	
 End.
