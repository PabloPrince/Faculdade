Program questao126 ;
var
aluno: record
nome:string;
idade:integer;
nota:real;
end;
 Begin
 	writeln('Digite o nome do aluno: ');
 	readln(aluno.nome);
 	repeat
 		writeln('Digite a idade de ',aluno.nome,' : ');
 		readln(aluno.idade);
 	until((aluno.idade >= 1) and (aluno.idade <= 120));	
 	repeat
 		writeln('Digite a nota do aluno ',aluno.nome,' : ');
 		readln(aluno.nota);
 	until((aluno.nota >=0) and (aluno.nota <= 10));
 		writeln('Dados do aluno ');
 			writeln('Nome: ',aluno.nome);
 			writeln('Idade: ',aluno.idade);
 			writeln('Nota: ',aluno.nota:2:2);
  
 End.
