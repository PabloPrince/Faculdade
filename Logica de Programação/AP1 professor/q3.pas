{
Quest�o 03 da 1� avalia��o de L�gica de Programa��o

A primeira avalia��o de l�gica de programa��o ser� da seguinte forma:
Uma avalia��o valendo 10,0 pontos mais um trabalho valendo 1,0 ponto. 
O aluno que entregar o trabalho s� ter� 1,0 ponto validado se obtiver no m�nimo 5,0 pontos na avalia��o. 
Sabendo disso, construa um algoritmo em Pascal que leia a nota de um aluno e verifique se ele entregou o trabalho. Se a nota do aluno for maior ou igual a 5,0 e ele tiver entregado o trabalho, informe a nota da avalia��o e a nota final (acrescido um ponto). Se ele n�o entregou o trabalho, imprima a nota final dele, que ser� apenas a nota da avalia��o.

Desenvolvido por: Andr� Bezerra - 29.04.14
}
Program q3 ;
 var
   nota, nota_final:real;
   trabalho:char;
 Begin
   write('Nota do aluno na avalia��o: ');
   readln(nota);
   write('O aluno fez o trabalho? (S ou N): ');
   readln(trabalho);
   
   //Caso a nota seja maior ou igual a 5.0 e trabalho foi entregue
   if (nota >= 5.0) and ((trabalho = 's') or (trabalho = 'S')) then
   	nota_final := nota + 1 //nota final receber� nota da avaliacao + 1
   //Caso contr�rio (nota < 5 ou trabalho n�o entregue)
   else
   	nota_final := nota; //a nota final ser� apenas a nota da avaliacao
   
   //imprimindo as notas
   writeln('Nota da avalia��o: ', nota:2:2); 
   writeln('Nota final: ', nota_final:2:2);  
 End.
