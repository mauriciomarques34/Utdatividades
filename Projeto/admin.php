<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="navbar">
    <div class="navbar-inner">
		<div class="container-fluid">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<a class="brand" href="#" name="top">BEM VINDO</a>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li><a href="form.php"><i class="icon-user"></i> Cadastrar </a></li>
					<li class="divider-vertical"></li>
					<li class="active"><a href="listagem.php"><i class="icon-file"></i> Listagem </a></li>
					<li class="divider-vertical"></li>
					<li><a href="logout.php"><i class="icon-home"></i> Sair </a></li>
					
					
				</ul>
			    </div>
		        </div>
			<!--/.nav-collapse -->
			</div>
		<!--/.container-fluid -->
			</div>
	<!--/.navbar-inner -->
</div>
<!--/.navbar -->

<?php  
	
	session_start();

	if(!isset($_SESSION['utdexec3'])){
		header("location: index.php?msg=acesso_nao_permitido");
	}

	echo " Você esta na area Admin !!!";
?>
