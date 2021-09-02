<?php  

	// Recebendo os dados do formulário
	$numeros = $_POST;

	
	echo "A soma é ".array_sum($numeros)."<br>";
	echo "Maior número é ".max($numeros)."<br>";
	echo "Menor número é ".min($numeros)."<br>";


?>