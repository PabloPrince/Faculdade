{
Questão 03 da 1ª avaliação de Lógica de Programação

A primeira avaliação de lógica de programação será da seguinte forma:
Uma avaliação valendo 10,0 pontos mais um trabalho valendo 1,0 ponto. 
O aluno que entregar o trabalho só terá 1,0 ponto validado se obtiver no mínimo 5,0 pontos na avaliação. 
Sabendo disso, construa um algoritmo em Pascal que leia a nota de um aluno e verifique se ele entregou o trabalho. Se a nota do aluno for maior ou igual a 5,0 e ele tiver entregado o trabalho, informe a nota da avaliação e a nota final (acrescido um ponto). Se ele não entregou o trabalho, imprima a nota final dele, que será apenas a nota da avaliação.

Desenvolvido por: André Bezerra - 29.04.14
}
Program q3 ;
 var
   nota, nota_final:real;
   trabalho:char;
 Begin
   write('Nota do aluno na avaliação: ');
   readln(nota);
   write('O aluno fez o trabalho? (S ou N): ');
   readln(trabalho);
   
   //Caso a nota seja maior ou igual a 5.0 e trabalho foi entregue
   if (nota >= 5.0) and ((trabalho = 's') or (trabalho = 'S')) then
   	nota_final := nota + 1 //nota final receberá nota da avaliacao + 1
   //Caso contrário (nota < 5 ou trabalho não entregue)
   else
   	nota_final := nota; //a nota final será apenas a nota da avaliacao
   
   //imprimindo as notas
   writeln('Nota da avaliação: ', nota:2:2); 
   writeln('Nota final: ', nota_final:2:2);  
 End.
