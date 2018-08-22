<?php

$nom = $_POST['p1'];
$t = strlen($nom);
$a = $e = $i2 = $o = $u = 0;

for ($i = 0; $i < $t; $i++) {
	
  if ($nom[$i] == "a") {
	$a++;  
  }	
  
  if ($nom[$i] == "e") {
	$e++;  
  }	
  
  if ($nom[$i] == "i") {
	$i2++;  
  }	
  
  if ($nom[$i] == "o") {
	$o++;  
  }	
  
  if ($nom[$i] == "u") {
	$u++;  
  }	
}

echo "Na frase digitada a: ";
echo "<br><br>";
echo $a;
echo " letras a.";
echo "<br>";

echo "<br>";
echo $e;
echo " letras e.";
echo "<br>";

echo "<br>";
echo $i2;
echo " letras i.";
echo "<br>";

echo "<br>";
echo $o;
echo " letras o.";
echo "<br>";

echo "<br>";
echo $u;
echo " letras u.";
echo "<br>";
  
?>
