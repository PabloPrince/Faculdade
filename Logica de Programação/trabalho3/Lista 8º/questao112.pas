Program questao112 ;
var
b,h:real;
function area(a,b:real):real;
var
x:real;
begin
x:=(a*b)/2;
area:=x;
end;
 Begin
 repeat
 writeln('Digite o valor da base do triângulo: ');
 readln(b);
 until(b > 0);
 repeat
 writeln('Digite o valor da altura do triângulo: ');
 readln(h);
 until(h > 0);
 writeln('Sua área é: ',area(b,h):2:2);
  
 End.
