Program questao62 ;
var
cont,s,x:integer;
 Begin
 x:=0;
 s:=0;
  for cont:=0 to 49 do
  begin
  	x:=cont+1;
  	s:=s+x;
  	cont:=cont+1;
  end;
  write('A soma é igual a: ',s);	
 End.
