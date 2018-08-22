<?php

$p = ($_POST['p1'] * $_POST['p2']) / 700;
$d = ($_POST['p1'] / 700);
$s = $p - (($p * 10) / 100);

echo "Cada quilowatt custou: ";
echo round($d, 2);
echo " Reais.";
echo "<br>";

echo "Ele vai pagar: ";
echo round($p, 2);
echo " Reais.";
echo "<br>";

echo "Com desconto de 10%: ";
echo round($s, 2); 
echo " Reais.";
echo "<br>";

?>
