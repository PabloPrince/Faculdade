Program questao113 ;
var
base,altura:real;
function area(b,h:real):real;
var
a:real;
begin
	a:=(b*h)/3;
	area:=a;
end;	
 Begin
 	writeln('Digite a base do triângulo: ');
 	readln(base);
 	writeln('Digite a altura do triângulo: ');
 	readln(altura);
 	writeln('A área do triângulo é: ',area(base,altura):2:2);
  
 End.
