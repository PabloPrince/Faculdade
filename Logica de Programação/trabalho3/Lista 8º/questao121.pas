Program questao120 ;
var
n1,n2:integer;
function soma(a,b:integer):integer;
var
s, cont:integer;
begin
	for cont:= 1 to b do
	begin
		s:=s+a;
	end;
	soma:=s;
end;		
 Begin
 writeln('Digite um número: ');
 readln(n1);
 writeln('Digite outro número: ');
 readln(n2);
 writeln(n1,'x',n2,'=', soma(n1,n2));
  
 End.
