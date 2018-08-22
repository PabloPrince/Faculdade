Program questao111 ;
var
n1,n2,n3:real;
function media(a,b,c:real):real;
var
m:real;
begin
m:=(a*1 + b*2 + c*4)/7;
media:=m;
end;
 Begin
 repeat
 writeln('Digite a primeira nota: ');
 readln(n1);
 until((n1 >= 0) and (n1 <= 10));
 repeat
 writeln('Digite a segunda nota: ');
 readln(n2);
 until((n2 >= 0) and (n2 <= 10));
 repeat
 writeln('Digite a terceira nota: ');
 readln(n3);
 until((n3 >= 0) and (n3 <= 10));
 writeln('A média é: ',media(n1,n2,n3):2:2);
  
 End.
