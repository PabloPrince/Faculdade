Program questao57 ;
var
ano:integer;
a400,p,f,t,a100,a4:real;
 Begin
      write('Digite o ano: ');
      read(ano);
        a400 := ano/400;
        a100 := ano/100;
        a4 := ano/4;
        t := frac(a4);
        f := frac(a100);
        p := frac(a400);
      	if (p = 0) then
      	begin
      	write('É bissexto ');
      	end
      		else if (t = 0) and (f <> 0) then
      		begin
      		write('É bissexto');
      		end
      			else
      			begin
      			write('Não é bissexto');
      			end;
 End.
