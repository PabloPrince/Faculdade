{
Quest�o 01 da 1� avalia��o de L�gica de Programa��o

Ao executar o algoritmo em Pascal abaixo, o que ser� impresso 
nas linhas 7, 8, 10 e 12?

Desenvolvido por: Andr� Bezerra - 29.04.14
}
Program q1 ;
 var
   x:integer;
   y:real;
 Begin
   x := 10;
   writeln(x);  //imprime 10: Foi atribuido 10 a X na linha anterior
   writeln(x - 3 * 2);  //imprime 4: X � 10, logo 10 - (3 * 2) = 4  
   y := int(x / 3); //Y recebe a parte inteira de 3.33 (10 / 3), que � 3.0
   writeln(x * y); //imprime 30.00: X � 10 e Y � 3.0, logo x * y = 30.00
   x := x mod 3; //X recebe o resto da divis�o de X (10) por 3, logo X recebe 1
   writeln(x); //Imprime 1: Novo valor de X atribuido na linha anterior
 End.
