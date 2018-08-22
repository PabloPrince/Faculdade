<?php

  switch ($_POST['planeta']) {
    
    case 1:
      $g = (($_POST['p1'] / 10) * 0.37);
      echo "Seu peso em mercurio e: ";
      echo round($g, 2);
      echo "Kg";
      break;
    
    case 2:
      $g = (($_POST['p1'] / 10) * 0.88);
      echo "Seu peso em venus e: ";
      echo round($g, 2);
      echo " Kg";
      break;
      
    case 3:
      $g = (($_POST['p1'] / 10) * 0.38);
      echo "Seu peso em marte e: ";
      echo round($g, 2);  
      echo " Kg";
      break;
    
     case 4:
      $g = (($_POST['p1'] / 10) * 2.64);
      echo "Seu peso em jupiter e: ";
      echo round($g, 2); 
      echo " Kg"; 
      break;
      
     case 5:
      $g = (($_POST['p1'] / 10) * 1.15);
      echo "Seu peso em saturno e: ";
      echo round($g, 2); 
      echo " Kg"; 
      break;
      
     case 6:
      $g = (($_POST['p1'] / 10) * 1.17);
      echo "Seu peso em urano e: ";
      echo round($g, 2); 
      echo " Kg"; 
      break;
      
    default:
      echo "nada ";
  }
?>
