Program questao26 ;
var
s,por,sf:real;
 Begin
  write('Digite seu sal�rio: ');
  read(s);
  if (s <= 1000) then
  begin
  	por := (s*15)/100;
  	sf := (s+por);
  end;
  write('Sal�rio inicial �: ',s,' e sal�rio final �: ',sf);	
 End.
