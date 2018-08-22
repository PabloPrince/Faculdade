<?php

  $media = (($_POST['p1'] + $_POST['p2'] + $_POST['p3'] + $_POST['p4']) / 4);
  
  if (($_POST['p1'] >= $_POST['p2']) and ($_POST['p1'] >= $_POST['p3']) and ($_POST['p1'] >= $_POST['p4'])) {
	  
	  $m = $_POST['p1'];
  }
  else if (($_POST['p2'] >= $_POST['p1']) and ($_POST['p2'] >= $_POST['p3']) and ($_POST['p2'] >= $_POST['p4'])) {
	  
	  $m = $_POST['p2'];
  }
  else if (($_POST['p3'] >= $_POST['p1']) and ($_POST['p3'] >= $_POST['p2']) and ($_POST['p3'] >= $_POST['p4'])) {
	  
	  $m = $_POST['p3'];
  }
  else if (($_POST['p4'] >= $_POST['p1']) and ($_POST['p4'] >= $_POST['p2']) and ($_POST['p4'] >= $_POST['p3'])) {
	  
	  $m = $_POST['p4'];
  }
  
  echo "A media dos numeros digitados e: ";
  echo round($media, 2);
  echo"<br>";
  echo "O maior numero digitado foi: ";
  echo $m;
  
?>
