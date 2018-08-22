Program questao123;
var 
n:integer;
 
Function primo(a:integer):integer;
var 
n2,cont,cont2:integer;      
r:boolean;
  begin
  r:=false;
  cont2:=0;
  repeat
  
   repeat
    n2:=random(a);
   until(n2>0);
  
   writeln(n2);
  
   for cont:=1 to n2 do
    if(n2 mod cont=0)then
     cont2:=i+1;
  
   if(cont2=2)then
   r:=true;
  
   if(cont2<>2)then
   r:=false;  
  
  cont2:=0;
  until(r=true);
  
  primo:= n2;
  end;

Begin
writeln('Digite um numero');
read(n);
writeln('Um numero primo menor que ',n,' é ',primo(n)); 
End.
