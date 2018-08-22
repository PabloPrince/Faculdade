Program questao113 ;
var
n:string;
function invert(a:string):string;
var
cont, cont2:integer;
p:string;
begin
	for cont:=length(a) downto 1 do
	begin
		for cont2:=(length(a) - cont + 1) to length(a) do
		begin
			p[cont2]:=a[cont];
		end;
	end;
	invert:= p;
end;					
 Begin
 writeln('Digite seu nome: ');
 readln(n);
 writeln(invert(n));
  
 End.
