Program questao72 ;
var
  n,cont,soma: integer ;
Begin
  repeat 
    write ('Digite um n�mero :' );
    readln(n);
  until (n > 0 );
  soma:=0 ;
  for cont:=1 to n do
  begin
    if (n mod cont = 0 ) then 
      soma:=soma+1;
  end;
  	if (soma = 2) then
  	begin
  		writeln('O n�mero digitado � primo');
  	end 
		else
		begin
			writeln('O n�mero digitado n�o � primo');
		end;		
End.
