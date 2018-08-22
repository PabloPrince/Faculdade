Program questao109 ;
var
n1,n2,n3:real;
procedure media(a,b,c:real);
var
m:real;
begin
	m:= (a+b+c)/3;
	writeln('Média: ',m:2:2);
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
 			writeln('Digite a trceira nota: ');
 			readln(n3);
 			until((n3 >= 0) and (n3 <= 10));
 	media(n1,n2,n3);
  
 End.
