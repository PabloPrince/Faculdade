Program questao122;
var 
x,y,r:integer;
  
Function dividir(var a,b,r:integer):integer;
var 
cont:integer;
 begin
 cont:=0;
 r:=a;
  while(r>=b)do
   begin 
    r:=r-b;
    cont:=cont+1;
   end; 
  dividir:=cont;
  end;
 
Begin
repeat
writeln('Digite o primeiro número: '); 
read(x);
writeln('Digite o segundo número: '); 
read(y);
until(x >= y);
writeln(x,' / ',y,' = ',dividir(x,y,r),' e resto ',r);
End.
