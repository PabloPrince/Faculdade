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
 	writeln('Digite a base do tri�ngulo: ');
 	readln(base);
 	writeln('Digite a altura do tri�ngulo: ');
 	readln(altura);
 	writeln('A �rea do tri�ngulo �: ',area(base,altura):2:2);
  
 End.
