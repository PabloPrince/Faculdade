<?php
  
  if ($_POST['p1'] <= 788) {
	echo "Isento!";  
  }
  else if (($_POST['p1'] >= 789) and ($_POST['p1'] <= 1200)) {
	$d = (($_POST['p1'] * 20) / 100);
	echo "O desconto e de: ";
	echo round($d, 2);
	echo " Reais.";  
  }
  else if (($_POST['p1'] >= 1200) and ($_POST['p1'] <= 2000)) {
	$d = (($_POST['p1'] * 25) / 100);
	echo "O desconto e de: ";
	echo round($d, 2);
	echo " Reais.";  
  }
  else if ($_POST['p1'] > 2000) {
	$d = (($_POST['p1'] * 30) / 100);
	echo "O desconto e de: ";
	echo round($d, 2);
	echo " Reais.";  
  }
?>
