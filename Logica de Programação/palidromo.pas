program pali;
var
x,y, z, k, r, w, x1, x2, x3, x4, x5, x6, x7:real;

begin
	write('Digite um numero: ');
	read(x);
	
	y := (x / 10000);
	y := int(y);
	
	x1 := ((y * 10000) - x);
	
	z := (abs(x1) / 1000);
	z := int(z);
	
	x2 := ((z * 1000) - (abs(x1)));
	
	k := (abs(x2) / 100);
	k := int(k);
	
	x3 := ((k * 100) - abs(x2));
	
	r := (abs(x3) / 10);
	r := int(r);
	
	x4 := ((r * 10) - abs(x3));
	
	w := (abs(x4) / 1);
	w := int(w);
	
	x5 := ((w * 1) - x4);
	
	x7 := abs((y * 10000) + (z * 1000) + (k * 100) + (r * 10) + (w * 1));
	
	writeln(y:2:2);
	writeln(abs(z):2:2);
	writeln(abs(k):2:2);
	writeln(abs(r):2:2);
	writeln(abs(w):2:2);
	writeln(x7:2:2);
	
		if((y = w) and (z = r)) then
		begin
			writeln('O numero digitado e palidromo.');
		end
			else
			begin
				writeln('O numero digitado nao e palidromo.');
			end;
end.
