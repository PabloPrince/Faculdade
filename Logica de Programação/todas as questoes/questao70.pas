Program questao70 ;
var
num,cont:integer;
 Begin
  repeat
  writeln('Digite um número: ');
  readln(num);
  	if (num < 50) then
  	begin
  		for cont:= num downto 0 do
  		begin
  			if ((cont mod 2) <> 0) then
  			begin
  				writeln(cont);
  			end;
		end;
	end;
  until(num < 50);			  	
 End.
