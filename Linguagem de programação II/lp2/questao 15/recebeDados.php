<?php

echo "Tabuada da soma: ";
echo "<br>";

for ($i = 1; $i <= 10; $i++) {
	
	echo $i;
	echo " + ";
	echo $_POST['p1'];
	echo " = ";
	echo $i + $_POST['p1'];
	echo "<br>";

}

echo "Tabuada da multiplicacao: ";
echo "<br>";

for ($i = 1; $i <= 10; $i++) {
	
	echo $i;
	echo " x ";
	echo $_POST['p1'];
	echo " = ";
	echo $i * $_POST['p1'];
	echo "<br>";

}


  
?>
