Program questao116 ;
var
n:integer;
function fator(a:integer):integer;
var
p, cont:integer;
begin
	p:=a;
	for cont:=1 to (a-1) do
	begin
		p:= (p*cont);
	end;
	fator:=p;
end;		
 Begin
 writeln('Digite um n�mero: ');
 readln(n);
 writeln('Seu fatorial �: ', fator(n));
  
 End.
