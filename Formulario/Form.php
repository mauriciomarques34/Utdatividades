
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>utd_atvidade</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

</head>

<body>
		<div class="container">
		<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
				
				<hr><h3>Formulario De Cadastro</h3><hr>
				
				<form action="recebe.php" method="POST">
					
						<label> <i class="fa fa-user"></i> Nome </label><br>
						<input type="text" class="form-control" name="cadastro_nome" placeholder="Digite seu Nome"><br><br>

						<label> <i class="fa fa-envelope"></i> Email </label><br>
						<input type="email" class="form-control" name="cadastro_email" placeholder="Digite seu Email"><br><br>

						<label> <i class="fa fa-globe"></i> Endereço </label><br>
						<input type="text" class="form-control" name="cadastro_endereco" placeholder="Digite seu endereço"><br><br>

						<label> <i class="fa fa-graduation-cap"></i> Escolaridade </label><br>
						<select class="form-control" name="cadastro_escolaridade">
						<option> Ensino Fundamental </option>
						<option> Ensino Medio </option>
						<option> Ensino Superior </option>
						</select><br><br>
					
					<div class="row">
							<div class="col-6">
								<label> <i class="fa fa-birthday-cake"></i> Data de Nascimento </label><br>
								<input type="date" class="form-control" name="cadastro_dataNasc"><br><br>
							</div>
							
							<div class="col-6">
								<label> <i class="fa fa-whatsapp"></i> Contato </label><br>
								<input type="text" class="form-control" name="cadastro_contato" placeholder="Telefone, Celular ou Whatsapp"><br><br>
							</div>
						

					
	</div>
		 <div>
		 <p class="text-end">
         <button class="btn btn-outline-secondary"> <i class="fa fa-send"></i> Enviar Dados </button>
         </p>
		 </div>



	</form>

	</div>
    <div class="col-3"></div>


	</div>
	</div>

</body>
</html>