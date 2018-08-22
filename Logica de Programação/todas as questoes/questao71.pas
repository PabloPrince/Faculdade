Program questao71 ;
var
x:integer;
 Begin
  repeat
  writeln('Digite um número entre 0 e 5: ');
  readln(x);
  if (x = 0) then
  begin
  	writeln('zero');
  end;
  	if (x = 1) then
  	begin
  		writeln('um');
  	end;
  		if (x = 2) then
  		begin
  			writeln('dois');
  		end;
  			if (x = 3) then
  			begin
  				writeln('três');
  			end;
  				if (x = 4) then
  				begin
  					writeln('quatro');
  				end;
  					if (x = 5) then
  					begin
  						writeln('cinco');
  					end;
  until(( x < 0) or (x > 5));					
 End.
