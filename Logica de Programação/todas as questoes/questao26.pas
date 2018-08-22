Program questao26 ;
var
s,por,sf:real;
 Begin
  write('Digite seu salário: ');
  read(s);
  if (s <= 1000) then
  begin
  	por := (s*15)/100;
  	sf := (s+por);
  end;
  write('Salário inicial é: ',s,' e salário final é: ',sf);	
 End.
