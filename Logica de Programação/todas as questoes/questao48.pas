Program questao48 ;
var
	porfa,porl,pa,pfa,pf:real;
	nm:string;
 Begin
   write('Digite o nome do material ');
   read(nm);
   write('Digite o pre�o atual do produto ');
   read(pa);
   	porfa := (pa*20)/100;
   	pfa := pa-porfa;
   	porl := (pa*15)/100;
   	pf := pa+porl;
   		writeln('Nome do material: ',nm);
		writeln('Pre�o atual: ',pa:2:2);
		writeln('Pre�o novo: ',pf:2:2);
		write('Pre�o de f�brica: ',pfa:2:2);
 End.
