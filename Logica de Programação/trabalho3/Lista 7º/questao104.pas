Program questao104 ;
var
d,n:string;
procedure aluno(disc,nome:string);
begin
	writeln('UNIVERSIDADE ESTADUAL VALE DO ACARA�');
	writeln('CENTRO DE CI�NCIAS EXATAS E TECNOLOGIAS');
	writeln('BACHARELADO EM CI�NCIAS DA COMPUTA��O');
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
