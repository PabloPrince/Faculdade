Program questao118 ;
var
x,y:real;
function porc(a,b:real):real;
var
p:real;
begin
	p:=(b*a)/100;
	porc:=p;
end;	
 Begin
 writeln('Digite um n�mero: ');
 readln(x);
 writeln('Digite outro n�mero: ');
 readln(y);
 writeln(x:2:2 ,'% ',' de ',y:2:2 ,' �: ',porc(x,y):2:2);
  
 End.
