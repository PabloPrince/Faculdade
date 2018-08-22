Program questao108 ;
var
nota:real;
procedure valida_nota(var n:real);
begin
	if ((n > 10) or (n < 0)) then
	begin
		repeat
			writeln('Nota não valida digite novamente: ');
			readln(n);
		until((n >= 0) and (n <= 10));
	end;
	writeln('Nota valida: ',n:2:2);
end;			 
 Begin
 	writeln('Digite a nota do aluno: ');
 	readln(nota);
 	valida_nota(nota);
  
 End.
