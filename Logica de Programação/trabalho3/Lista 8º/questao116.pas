Program questao116 ;
var
p,k: integer;

function multi (a,b:integer):integer;
 var
  maior, menor,cont,m:integer;
  
 begin
   if a > b then
    begin
     maior:= a;
     menor:= b;
    end 
   else if b > a then
    begin 
     maior:= b;
     menor:= a;
    end;
    
   for cont:= menor to maior do
     begin
       if ((cont mod 2 = 0) or (cont mod 3 = 0) or (cont mod 5 = 0)) then 
         m:= m+1;
     end;
    
   multi:= m;
   
 end;
  

Begin
  write ('Digite o primeiro numero: ');
  read  (p);
  writeln('Digite o segundo numero: ');
  read  (k);
  writeln ('Entre ',p,' e ',k,' existem ', multi(p,k),' números multiplos de 2, 3 e 5.');
End.
