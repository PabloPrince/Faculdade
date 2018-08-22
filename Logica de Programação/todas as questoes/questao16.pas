Program questao16 ;
var
   x,y,z,soma:real;
 Begin
  write('Digite o valor do custo de fábrica do carro: ');
  read(x);
  y:=(x*28)/100;
  z:=(x*45)/100;
  soma:=(x+y+z);
  write('O custo final do carro é: ',soma);
 End.
