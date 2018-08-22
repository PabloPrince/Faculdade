Program questao119 ;
var
N:integer;
function media(a:integer):real;
var
cont:integer;
soma, m, p:real;
begin
	for cont:=1 to a do
	begin
		write('Digite outro número: ');
		read(p);
		soma:= soma+p;
	end;
		m:= soma/a;
media:=m;
end;			
 Begin
 writeln('Digite um número: ');
 read(N);
 writeln('Média da soma de todos os números é: ', media(N):2:2);
  
 End.
