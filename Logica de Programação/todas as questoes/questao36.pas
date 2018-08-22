Program questao36 ;
var
a,h,fe:real;
s:char;
 Begin
  write('Digite f se você for do sexo feminino e m se for do sexo masculino: ');
  read(s);
  write('Digite sua altura: ');
  read(a);
  	if ((s = 'm') or (s = 'M')) then
  	begin
  	h := ((72.7*a) - 58);
  		write('O seu peso ideal é: ',h:2:2);
  	end
  		else if ((s = 'f') or (s = 'F')) then
  		begin
  		fe := ((62.1*a) - 44.7);
  			write('O seu peso ideal é: ',fe:2:2);
          end
          else
          begin
          	write('Erro');
          end;	
 End.        
