Program salario ;
var
nome:string;
sexo:char;
idade:integer;
salario,salariofinal,porcentagem:real;
 Begin
  write('Digite seu nome: ');
  read(nome);
  write('Digite seu sexo, se for feminino coloque f e se for masculino coloque m: ');
  read(sexo);
  write('Digite sua idade: ');
  read(idade);
  write('Digite seu salário: ');
  read(salario);
  	if ((sexo = 'm') or (sexo = 'M')) and (idade > 21) then
  	begin
  	porcentagem := (salario*15)/100;
  	salariofinal := (salario + porcentagem);
  	writeln('O nome da pessoa é: ',nome);
  	writeln('A idade da pessoa é: ',idade);
  	writeln('O sexo da pessoa é: ',sexo);
  	writeln('O salário inicial da pessoa é: ',salario:2:2);
  	writeln('O salário final da pessoa é: ',salariofinal:2:2);
  	end;
  		if ((sexo = 'f') or (sexo = 'F')) and (idade > 18) then
  		begin
  			porcentagem := (salario*17)/100;
  			salariofinal := (salario + porcentagem);
  			writeln('O nome da pessoa é: ',nome);
  			writeln('A idade da pessoa é: ',idade);
  			writeln('O sexo da pessoa é: ',sexo);
  			writeln('O salário inicial da pessoa é: ',salario:2:2);
  			writeln('O salário final da pessoa é: ',salariofinal:2:2);
  		end;	
 End.
