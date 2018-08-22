<?php
  
  switch ($_POST['moeda']) {
	
	case 1:
	  $d = ($_POST['p1'] / 3.15);
	  echo "Seu dinheiro em dolares e: ";
	  echo round($d, 2);
	  echo " Dolares.";
	break;
	
    case 2:
	  $e = ($_POST['p1'] / 3.50);
	  echo "Seu dinheiro em euros e: ";
	  echo round($e, 2);
	  echo " Euros.";
	break;    
	
	case 3:
	  $l = ($_POST['p1'] / 4.20);
	  echo "Seu dinheiro em libras e: ";
	  echo round($l, 2);
	  echo " libras.";
	break; 
	
	case 4:
	  $y = ($_POST['p1'] / 1.20);
	  echo "Seu dinheiro em yenes e: ";
	  echo round($y, 2);
	  echo " yenes.";
	break;
	
	default:
	  echo " nada";  
  }
?>
