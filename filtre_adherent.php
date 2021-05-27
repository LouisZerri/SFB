<?php

	session_start();

	require "include/header.php";
	require "include/db.php";

	$donnes = getInformationForFilter();
	$droit = droitBdd($_SESSION['auth']->email);
?>
<center>
	<img src="style/page.png">
</center>
<div class="container mt-3">
	<?php if($droit): ?>
		<h1>Filtrer les adhérents</h1>
		<label for="">Filtrer :</label>
		<input type="text" name="category" id="categoryFilter" class="form-control" placeholder="Filtrer...">
		<table id="filtre_adherent" class="table table-striped mt-3">
			<thead>
				<tr>
	  				<th scope="col">Entreprise</th>
			      	<th scope="col">Contact</th>
			      	<th scope="col">Email</th>
			      	<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($donnes as $data): ?>
					<tr>
						<td><span><?= $data->nom_adherent; ?></span></td>
						<td><?= $data->prenom?> <?= $data->nom_representant; ?></td>
						<td><?= $data->email ?></td>
						<td><a style='color: black; text-decoration: none;' href="modifier_adherent.php?id=<?= $data->id_representant ?>"><i class='fa fa-pencil'></i></a>&nbsp;&nbsp;&nbsp;&nbsp;<a style='color: black; text-decoration: none;' href="supprimer_adherent.php?id=<?= $data->id_representant ?>"><i class='fa fa-trash'></i></a></td>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	<?php else: ?>
		</br>
		</br>
		</br>
		<div class="container">
			<div class="alert alert-warning" role="alert"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>&nbsp;&nbsp;Vous n'avez pas les droits pour visualiser la base de donnée</div>
		</div>
	<?php endif; ?>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="include/app.js"></script>

<?php require "include/footer.php"; ?>