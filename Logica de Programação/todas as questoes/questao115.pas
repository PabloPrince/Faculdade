Program questao114 ;
var
x:string;
function vogal(a:string):integer;
var
cont,v:integer;
begin
	for cont:=1 to length(a) do
	begin
     	if((a[cont]='a') or (a[cont]='A') or (a[cont]='e') or (a[cont]='E') or (a[cont]='i') or (a[cont]='I') or (a[cont]='o') or (a[cont]='O') or (a[cont]='u') or (a[cont]='U')) then
          begin
          	v:=v+1;
          end;
	end;
	vogal:=v;
end;			
 Begin
 writeln('Digite uma palavra: ');
 readln(x);
 writeln('Quantidade de vogais igual a: ',vogal(x));   
  
 End.
