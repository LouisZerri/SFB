<!DOCTYPE html>
<html>
<head>
	<title>SFB - Syndicat de la Filière Bois</title>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style/font-awesome.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<?php if(isset($_SESSION['auth'])): ?>
			<a class="navbar-brand" href="accueil.php">
		    	<img src="style/logo.png" width="30" height="30" class="d-inline-block align-top" alt=""/>
		    	<span style="color:#689E75"><span style="color:#716F70">S</span>yndicat de la <span style="color:#716F70">F</span>ilière <span style="color:#716F70">B</span>ois</span>
			</a>
		<?php else: ?>
			<a class="navbar-brand" href="index.php">
		    	<img src="style/logo.png" width="30" height="30" class="d-inline-block align-top" alt=""/>
		    	<span style="color:#689E75"><span style="color:#716F70">S</span>yndicat de la <span style="color:#716F70">F</span>ilière <span style="color:#716F70">B</span>ois</span>
			</a>
		<?php endif; ?>
		<div class="collapse navbar-collapse" id="navbarNav">
    		<ul class="navbar-nav">
    			<?php if(isset($_SESSION['auth'])): ?>
	      			<li class="nav-item active">
	        			<a class="nav-link" href="https://www.sfbois.com/"><span class="fa fa-tree" style="color:#689E75;"></span>&nbsp;&nbsp;Notre site officiel</a>
	      			</li>
	      			<li class="nav-item active">
			        	<a class="nav-link" href="register.php"><span class="fa fa-plus" style="color:#e51616;"></span>&nbsp;&nbsp;Ajouter un adhérent</a>
			      	</li>
			      	<li class="nav-item active">
	        			<a class="nav-link" href="questionner.php"><span class="fa fa-code"style="color:purple;"></span>&nbsp;&nbsp;Interroger le Web Service</a>
	      			</li>
	      			<li class="nav-item active">
	        			<a class="nav-link" href="logout.php"><span class="fa fa-sign-out"style="color:#e51616;"></span>&nbsp;&nbsp;<b>Deconnexion</b></a>
	      			</li>
    			<?php else: ?>
	      			<li class="nav-item active">
	        			<a class="nav-link" href="https://www.sfbois.com/"><span class="fa fa-tree" style="color:#689E75;"></span>&nbsp;&nbsp;Notre site officiel</a>
	      			</li>
	      			<li class="nav-item active">
			        	<a class="nav-link" href="register.php"><span class="fa fa-plus" style="color:#e51616;"></span>&nbsp;&nbsp;Ajouter un adhérent</a>
			      	</li>
			      	<li class="nav-item active">
			        	<a class="nav-link" href="index.php"><span class="fa fa-sign-in" style="color:#e516c5;"></span>&nbsp;&nbsp;<b>Se connecter</b></a>
			      	</li>
			     <?php endif; ?>
    		</ul>
  		</div>
	</nav>

	<div class="container">
		</br>
		<?php if(isset($_SESSION['flash'])): ?>
		  <?php foreach($_SESSION['flash'] as $type => $message): ?>
			<div class="alert alert-<?= $type;?> alert-dismissible fade show" role="alert">
			  <?= $message; ?>
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    		<span aria-hidden="true">&times;</span>
	  		</button>
			</div>
		  <?php endforeach; ?>
		  <?php unset($_SESSION['flash']); ?>
		<?php endif; ?>
	</div>