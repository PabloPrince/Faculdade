Program questao127 ;
var
agenda: record
nome,endereco:string;
telefone:integer;
end;
 Begin
 	writeln('Digite o nome: ');
	 readln(agenda.nome);
	 writeln('Digite o endereço de ',agenda.nome,' : ');
	 readln(agenda.endereco);
	 writeln('Digite o telefone de ',agenda.nome,' : ');
	 readln(agenda.telefone);
	 	writeln('Dados da pessoa ');
		 	writeln('Nome: ',agenda.nome);
			writeln('Endereço: ',agenda.endereco);
			writeln('Telefone: ',agenda.telefone);  
 End.
