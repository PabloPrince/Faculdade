<?php

$num = explode(",", $_POST['p1']);

$s = 0;

for ($i = 0; $i < 20; $i++) {
	
	$p = $num[$i];
 
  if ($p * $p < 225) {
	$s = $s + $p;  
  }	
}

echo "A soma dos numeros cujo o quadrado e menor que 225 e: ";
echo $s;
  
?>
