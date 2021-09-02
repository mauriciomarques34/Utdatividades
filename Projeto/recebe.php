<?php  

	
	$dados = $_POST;

	
	$dados = implode(" - ", $dados);

	
	$arquivo = fopen("cadastros.txt", "a+");

	
	fwrite($arquivo, $dados."\n");

	
	fclose($arquivo);

	header("location: listagem.php");


?>