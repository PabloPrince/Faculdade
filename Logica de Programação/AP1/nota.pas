Program nota ;
var
n1,n2:real;
t:char;
 Begin
  write('Digite a nota do aluno: ');
  readln(n1);
  write('Digite s se ele entregou o trabalho e n se não entregou o trabalho: ');
  read(t);
  
	If (n1 >= 5.0) and ((t = 's') or (t = 'S')) then
	begin
		n2 := (n1 + 1);
		writeln('A nota da avaliação foi: ',n1:2:2);
		writeln('A nota final foi: ',n2:2:2);
	end
     else
	begin
		write('A nota final foi: ',n1:2:2);
	end;
 End.
