<?php
	
	session_start();

	require 'include/header.php';

	if(!empty($_POST))
	{
		$errors = array();

		require_once 'include/db.php';

		if(empty($_POST['email']) || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))
		{
			$errors['email'] = "Votre email n'est pas valide";
		}
		else
		{
			
			if(checkEmail($_POST['email']))
			{
				$errors['email'] = "Cet email est déjà utilisé pour un autre compte";
			}
		}

		if(empty($errors))
		{
			insertConnexion($_POST['email'], $_POST['mot_de_passe']);

			$_SESSION['flash']['success'] = 'Le login a été ajouté avec succès !';

			header('Location: index.php');

			exit();
		}
		
	}

?>
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

</br>
<div class="card">
	<div class="card-header">
		<center><h3>Ajouter un login</h3></center>
	</div>
	<div class="card-body">
		<form action="" method="POST">
			<div class="form-group">
				<label for=""><i class="fa fa-id-card-o"></i>&nbsp;&nbsp;Email : </label>
				<input type="text" name="email" class="form-control" required>
			</div>
			<div class="form-group">
				<label for=""><i class="fa fa-address-card-o"></i>&nbsp;&nbsp;Mot de passe : </label>
				<input type="password" name="mot_de_passe" class="form-control" required>
			</div>
			<center>
				</br>
				<button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i>&nbsp;&nbsp;Ajouter un login</button>
			</center>
		</form>
	</div>
</div>
</div>

</br></br>

<?php require 'include/footer.php' ?>