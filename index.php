<?php

	session_start();

	require 'include/header.php';

	if(!empty($_POST) && !empty($_POST['email']) && !empty($_POST['password']))
	{
	    require_once 'include/db.php';

		$user = getLesRepresentant($_POST['email']);

	    if($user == null)
	    {
	        $_SESSION['flash']['danger'] = 'Identifiant ou mot de passe incorrect';
	    }
	    elseif(password_verify($_POST['password'], $user->mot_de_passe))
	    {
	        $_SESSION['auth'] = $user;
	        $_SESSION['flash']['success'] = 'Vous êtes maintenant connecté';
	        header('Location: accueil.php');
	        exit();
	    }
	    else
	    {	
	        $_SESSION['flash']['danger'] = 'Identifiant ou mot de passe incorrect';
	    }
	}
?>

</br>
<div class="container">
	<?php if(!empty($errors)): ?>
		<div class="alert alert-danger">
			<p>Vous n'avez pas rempli le formulaire correctement</p>
			<ul>
				<?php foreach ($errors as $error): ?>
					<li><?= $error; ?></li>
				<?php endforeach; ?>
			</ul>
		</div>
	<?php endif; ?>
	<center>
		<img src="style/page.png">
	</center>
	<div class="card" style="width: 50%; height: 50%; margin-left: 280px;">
		<div class="card-header">
			<center><h3>Connectez-vous</h3></center>
	  	</div>
	  	<div class="card-body">
			<form action="" method="POST">
				<div class="form-group">
					<label for=""><span class="fa fa-envelope"></span>&nbsp;&nbsp;Email : </label>
					<input type="text" name="email" class="form-control" required>
				</div>
				<div class="form-group">
					<label for=""><span class="fa fa-key"></span>&nbsp;&nbsp;Mot de passe : </label>
					<input type="password" name="password" class="form-control" required>
				</div>
				<button type="submit" class="btn btn-primary">Me connecter</button>
			</form>
	  	</div>
	</div>
</div>

<?php require 'include/footer.php'; ?>