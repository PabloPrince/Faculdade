{
Quest�o 02 da 1� avalia��o de L�gica de Programa��o

Um algoritmo obt�m as seguintes informa��es do usu�rio: nome, sexo, idade, e sal�rio. 
	- Se o sexo for masculino e a idade maior que 21 anos, acres�a ao sal�rio inicial desta pessoa 15%.
	- Se o sexo for feminino e a idade maior que 18 anos, acres�a ao sal�rio inicial desta pessoa 17%.
Ao final, imprima o nome da pessoa, a idade, o sexo, e o sal�rio inicial e o sal�rio final.

Desenvolvido por: Andr� Bezerra - 29.04.14
}
Program q2 ;
 var
   nome:string;
   sexo:char;
   idade:integer;
   salario_i, salario_f:real;
 Begin
   //obtendo os valores pelo teclado
   write('Nome da pessoa: ');
   read(nome);
   write('Sexo de ',nome,' : ');
   read(sexo);
   write('Idade de ',nome,' : ');
   read(idade);
   write('Salario de ',nome,' : ');
   read(salario_i);
   
   //se o sexo for masculino E a idade maior que 21 anos
   if ((sexo = 'm') or (sexo = 'M')) and (idade > 21) then
   	salario_f := salario_i * 1.15 //salario final ser� o salario inicial mais 15% 
   //se o sexo for feminino E a idade maior que 18 anos
   else if ((sexo = 'f') or (sexo = 'F')) and (idade > 18) then
   	salario_f := salario_i * 1.17 //salario final ser� o salario inicial mais 17%
   else // caso a pessoa n�o atenda nenhuma das condi��es anteriores, seu salario final ser� o mesmo salario inicial.
   	salario_f := salario_i;
   
   //imprimindo as informa��es finais
   writeln('');	
   writeln('RELATORIO');
   writeln('');
   writeln('Nome: ', nome);
   writeln('Sexo: ', sexo);
   writeln('Idade: ', idade);
   writeln('Salario Inicial: ', salario_i:4:2);
   writeln('Salario Final: ', salario_f:4:2);
  
 End.
