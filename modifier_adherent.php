<?php
	
	session_start();

	require 'include/header.php';
	require 'include/db.php';

	if(isset($_GET['id']) && is_numeric($_GET['id']))
	{
		$adherent = recuperationAdherentById($_GET['id']);

		if(!empty($_POST))
		{
			$errors = array();

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
				updateAdherent($_GET['id'], $_POST['name_company'], $_POST['adresse'], $_POST['code_postal'], $_POST['ville'], $_POST['telephone_entreprise'], $_POST['siret'], $_POST['bulletin']);
				updateRepresentant($_GET['id'], $_POST['nom'], $_POST['prenom'], $_POST['email']);
				$_SESSION['flash']['success'] = 'La modification de l\'adhérent s\'est effectuée avec succès';
				header('Location: ../accueil');
			}
		}
	}
	else
	{
		header('Location: accueil');
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
		<center><h3>Modifier un adhérent</h3></center>
	</div>
	<div class="card-body">
		<form action="" method="POST">
			<div class="row">
				<div class="col" style="border-right: 2px solid black;">
					<h4>Modifier le représentant : </h4>
					</br>
					<div class="form-group">
						<label for=""><i class="fa fa-id-card-o"></i>&nbsp;&nbsp;Nom : </label>
						<input type="text" name="nom" class="form-control" value="<?= $adherent->nom_representant ?>" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-address-card-o"></i>&nbsp;&nbsp;Prénom : </label>
						<input type="text" name="prenom" class="form-control" value="<?= $adherent->prenom ?>" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-envelope-o"></i>&nbsp;&nbsp;Email : </label>
						<input type="text" name="email" class="form-control" value="<?= $adherent->email ?>" required>
					</div>
				</div>
				<div class="col">
					<h4>Modifier son entreprise : </h4>
					</br>
					<div class="form-group">
						<label for=""><i class="fa fa-building"></i>&nbsp;&nbsp;Nom de l'entreprise: </label>
						<input type="text" name="name_company" class="form-control" value="<?= $adherent->nom_adherent ?>" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Adresse : </label>
						<input type="text" name="adresse" class="form-control" value="<?= $adherent->adresse ?>" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-location-arrow"></i>&nbsp;&nbsp;Code postal : </label>
						<input type="text" name="code_postal" class="form-control" value="<?= $adherent->code_postal ?>" equired>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-street-view"></i>&nbsp;&nbsp;Ville : </label>
						<input type="text" name="ville" class="form-control" value="<?= $adherent->ville ?>" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-phone"></i>&nbsp;&nbsp;Téléphone : </label>
						<input type="text" name="telephone_entreprise" class="form-control" value="<?= $adherent->telephone ?>" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp;Siret : </label>
						<input type="text" name="siret" class="form-control" value="<?= $adherent->siret ?>" required>
					</div>
					<div class="form-group">
						<label for=""><i class="fa fa-file"></i>&nbsp;&nbsp;Bulletin retourné (ne rien mettre si pas recu) : </label>
						<input type="text" name="bulletin" class="form-control" value="<?= $adherent->bulletin_retourne ?>" placeholder="Exemple : Recu le JJ/MM/AA">
					</div>
				</div>
			</div>
			<center>
				</br>
				<button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i>&nbsp;&nbsp;Modifier un adhérent</button>
			</center>
		</form>
	</div>
</div>
</div>

</br></br>

<?php require "include/footer.php";