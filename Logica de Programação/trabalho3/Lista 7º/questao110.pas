Program questao110 ;
var
x:char;
procedure vogal(a:char);
begin
	if ((a = 'a') or (a = 'e') or (a = 'i') or (a = 'o') or (a = 'u')) then
	begin
		writeln('� uma vogal.');
	end
		else
		begin
			writeln('N�o � uma vogal.');
		end;
end;				
 Begin
 	writeln('Digite uma caractere: ');
 	readln(x);
 	vogal(x);
  
 End.
