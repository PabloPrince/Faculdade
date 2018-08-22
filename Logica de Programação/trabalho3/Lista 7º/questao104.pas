Program questao104 ;
var
d,n:string;
procedure aluno(disc,nome:string);
begin
	writeln('UNIVERSIDADE ESTADUAL VALE DO ACARAÚ');
	writeln('CENTRO DE CIÊNCIAS EXATAS E TECNOLOGIAS');
	writeln('BACHARELADO EM CIÊNCIAS DA COMPUTAÇÃO');
	writeln('DISCIPLINA: ',disc);
	writeln('ALUNO: ',nome);
end;	
 Begin
 	writeln('Digite sua disciplina: ');
 	readln(d);
 		writeln('Digite o seu nome: ');
 		readln(n);
 	aluno(d,n);
 End.
