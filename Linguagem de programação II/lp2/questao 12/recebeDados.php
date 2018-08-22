<?php

$p = 1;
$d = 0;
$r = 0;

for ($i = 1; $i <= 20; $i++) {
	
  $r = $d + $p;
  $p = $d;
  $d = $r;
  
  echo " ";
  echo $r;
  echo "<br>";
}
  
?>
