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

		/*************************************************************************************************************/
		if(!preg_match ("#^[0-9]{5,5}$#",$_POST['code_postal']))
		{
			$errors['code_postal'] = "Vous devez rentrer un code postal valide";
		}

		if(!preg_match("#^0[1-68]([-. ]?[0-9]{2}){4}$#", $_POST['telephone_entreprise']))
		{
			$errors['telephone_entreprise'] = "Le numéro de téléphone de l'entreprise n'est pas valide";
		}

		if($_POST['bulletin'] == "")
		{
			$_POST['bulletin'] = null;
		}

		if(empty($errors))
		{
			insertRepresentant($_POST['nom'], $_POST['prenom'], $_POST['email']);

			insertAdherent($_POST['name_company'],
						   $_POST['adresse'],
						   $_POST['code_postal'],
						   $_POST['ville'],
						   $_POST['telephone_entreprise'],
						   $_POST['bulletin']
						   );

			if(isset($_SESSION['auth']))
			{
				$_SESSION['flash']['success'] = 'La mise à jour de la base s\'est effectuée avec succès';
				header('Location: accueil.php');
			}
			else
			{
				$_SESSION['flash']['success'] = 'La mise à jour de la base s\'est effectuée avec succès';
				echo "<script type='text/javascript'>document.location.replace('index.php');</script>";
			}

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
		<center><h3>Ajouter un adhérent</h3></center>
	</div>
	<div class="card-body">
		<form action="" method="POST">
			<div class="row">
				<div class="col" style="border-right: 2px solid black;">
					<h4>Ajouter un representant</h4>
					</br>
					<div class="form-group">
						<label for=""><i class="fa fa-id-card-o"></i>&nbsp;&nbsp;Nom : </label>
						<input type="text" name="nom" class="form-control" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-address-card-o"></i>&nbsp;&nbsp;Prénom : </label>
						<input type="text" name="prenom" class="form-control" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-envelope-o"></i>&nbsp;&nbsp;Email : </label>
						<input type="text" name="email" class="form-control" required>
					</div>
				</div>
				<div class="col">
					<h4>Ajouter une entreprise</h4>
					</br>
					<div class="form-group">
						<label for=""><i class="fa fa-building"></i>&nbsp;&nbsp;Nom de l'entreprise: </label>
						<input type="text" name="name_company" class="form-control" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Adresse : </label>
						<input type="text" name="adresse" class="form-control" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-location-arrow"></i>&nbsp;&nbsp;Code postal : </label>
						<input type="text" name="code_postal" class="form-control" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-street-view"></i>&nbsp;&nbsp;Ville : </label>
						<input type="text" name="ville" class="form-control" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-phone"></i>&nbsp;&nbsp;Téléphone : </label>
						<input type="text" name="telephone_entreprise" class="form-control" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-file"></i>&nbsp;&nbsp;Bulletin retourné (ne rien mettre si pas recu) : </label>
						<input type="text" name="bulletin" class="form-control" placeholder="Exemple : Recu le JJ/MM/AA">
					</div>
				</div>
			</div>
			<center>
				</br>
				<button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i>&nbsp;&nbsp;Ajouter un adhérent</button>
			</center>
		</form>
	</div>
</div>
</div>

</br></br>

<?php require 'include/footer.php' ?>