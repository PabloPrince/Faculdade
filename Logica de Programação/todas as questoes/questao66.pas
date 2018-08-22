Program questao66 ;
var
num,cont:integer;
 Begin
 cont:=0;
  repeat
  	write('Digite um número: ');
  	read(num);
  until((num >= 0) and (num <= 50));
  	for cont:=0 to num do
	  begin
	  	if ((cont mod 2) = 0) then
		  begin
		  	writeln(cont);
		  end;
	  end;	  	
 End.
