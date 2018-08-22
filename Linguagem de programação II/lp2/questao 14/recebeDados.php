<?php

$t = strlen($_POST['p1']);

for ($i = 0; $i <= $t; $i++) {
  $p = substr($_POST['p1'], 0,$t - $i);
  echo $p;
  echo "<br>";	
}
  
?>
