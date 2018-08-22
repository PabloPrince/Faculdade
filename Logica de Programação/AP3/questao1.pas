Program Piso_teto ;
var
a:real;
function piso(x:real):real;
var
z,y:real;
begin
	y:=frac(x);
	z:=x-y;
	piso:=z;
end;
	procedure teto(x:real);
	var
	y,z,w:real;
	begin
		y:=frac(x);
		z:=x-y;
		w:=z+1;
		writeln('O seu teto é: ',w:2:2);
	end;		
 Begin
 	writeln('Digite um número: ');
	read(a);
	writeln('O seu piso é: ',piso(a):2:2);
	teto(a); 
 End.
