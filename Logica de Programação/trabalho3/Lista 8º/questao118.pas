Program questao117 ;
var
f:real;
function c(a:real):real;
var
p:real;
begin
	p :=(a-32)/1.8;
	c := p;
end;		
 Begin
 writeln('Digite um valor em Fahrenheit: ');
 readln(f);
 writeln('Esse valor em celsius é: ',c(f):2:2);
  
 End.
