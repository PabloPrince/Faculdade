Program questao69 ;
var
i,maior,menor:integer;
 Begin
 maior:=0;
 menor:=0;
  repeat
  writeln('Digite uma idade: ');
  readln(i);
  	if (i > maior) then
  	begin
  		maior:=i;
  	end
  		else if (i < menor) then
  		begin
  			menor:=i;
  		end;	
  until(i = 0);
  	writeln('A maior idade digitada foi: ',maior);
	writeln('A menor idade digitada foi: ',menor);    	
 End.
