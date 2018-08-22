<?php
$n = strlen($_POST['p1']);

for ($i = 0; $i <= $n; $i++){
  for ($j = 0; $j <= $n; $j++) {
    if ($i > $j) {
      echo $_POST['p1'];
	}
	echo " ";
  }
  echo "<br>";
}
  
?>
