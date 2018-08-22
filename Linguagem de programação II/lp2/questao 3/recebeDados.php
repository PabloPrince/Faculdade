<?php

  $h = ($_POST['p1'] * $_POST['p4'] / 2);
  
  echo "A area desse triangulo e: ";
  echo round($h, 2);

  echo "<br>";
  
  if (($_POST['p1'] == $_POST['p2']) and ($_POST['p1'] == $_POST['p3'])) {
    echo "Triangulo equilatero!";
  }
  else if (($_POST['p1'] != $_POST['p2']) and ($_POST['p1'] == $_POST['p3'])) {
    echo "Triangulo isoceles!";
  }
  else if (($_POST['p1'] == $_POST['p2']) and ($_POST['p1'] != $_POST['p3'])) {
    echo "Triangulo isoceles!";
  }
  else if (($_POST['p1'] != $_POST['p3']) and ($_POST['p1'] == $_POST['p2'])) {
    echo "Triangulo isoceles!";
  }
  else if (($_POST['p1'] == $_POST['p3'])  and ($_POST['p1'] != $_POST['p2'])) {
    echo "Triangulo isoceles!";
  }
  else if (($_POST['p1'] != $_POST['p2']) and ($_POST['p1'] != $_POST['p3'])) {
    echo "Triangulo escaleno!";
  }
?>
