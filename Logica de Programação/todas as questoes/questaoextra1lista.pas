Program questaoextra1lista ;
var
x,y,z:real;
 Begin
  write('Digite um número: ');
  read(x);
  y:=frac(x);
  z:=int(x);
  write('A parte inteira do número é: ',z:2:2,' e a parte decimal é: ',y:2:2);
 End.
