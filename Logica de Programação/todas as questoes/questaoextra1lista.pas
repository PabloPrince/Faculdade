Program questaoextra1lista ;
var
x,y,z:real;
 Begin
  write('Digite um n�mero: ');
  read(x);
  y:=frac(x);
  z:=int(x);
  write('A parte inteira do n�mero �: ',z:2:2,' e a parte decimal �: ',y:2:2);
 End.
