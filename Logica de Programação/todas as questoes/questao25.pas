Program questao25 ;
var
n1,n2,n3,media:real;
 Begin
  write('Digite a primeira nota do aluno: ');
  read(n1);
  write('Digite a segunda nota do aluno: ');
  read(n2);
  write('Digite a terceira nota do aluno: ');
  read(n3);
  media := (n1+n2+n3)/3
  	if (media >= 7) then
  	begin
  		write('Aluno aprovado');
  	end;
	  if (media >= 4) and (media < 7) then
	  begin
	  	write('Aluno vai para NAF');
	  end;
	  	if (media < 4) then
		begin
			write('Aluno reprovado');
		end;	  	  	
 End.
