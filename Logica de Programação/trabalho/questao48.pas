Program questao48 ;
var
	porfa,porl,pa,pfa,pf:real;
	nm:string;
 Begin
   write('Digite o nome do material ');
   read(nm);
   write('Digite o preço atual do produto ');
   read(pa);
   	porfa := (pa*20)/100;
   	pfa := pa-porfa;
   	porl := (pa*15)/100;
   	pf := pa+porl;
   		writeln('Nome do material: ',nm);
		writeln('Preço atual: ',pa:2:2);
		writeln('Preço novo: ',pf:2:2);
		write('Preço de fábrica: ',pfa:2:2);
 End.
