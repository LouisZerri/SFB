<?php

	session_start();

	require "include/header.php";

	require "include/db.php";

	$perPage = 15;
 
	$droit = droitBdd($_SESSION['auth']->email);

	$nbAd = countElement();

	$nombreAdherent = $nbAd->nb_adherent;

	$nbPage = ceil($nombreAdherent / $perPage);

	if(isset($_GET['page']) && $_GET['page'] > 0 && $_GET['page'] <= $nbPage)
	{
		$cPage = $_GET['page'];

	}
	else
	{
		$cPage = 1;
	}

	$donnees = getAllInformation($cPage,$perPage);

?>
<center>
	<img src="style/page.png">
</center>
<?php if($droit): ?>
	</br>
	<center>
		<table style="width: 95%; font-size: 15px;" class="table table-striped">
	  		<thead>
			    <tr>
			      <th scope="col"><center>Contact</center></th>
			      <th scope="col"><center>Email</center></th>
			      <th scope="col"><center>Entreprise</center></th>
			      <th scope="col"><center>Téléphone</center></th>
			      <th scope="col"><center>Adresse</center></th>
			      <th scope="col"><center>CP</center></th>
			      <th scope="col"><center>Ville</center></th>
			      <th scope="col"><center>Bulletin</center></th>
			    </tr>
	  		</thead>
		  	<tbody>
		  		<?php
		  			$i = 1;
		  			while($res = $donnees->fetch())
		  			{

		  				$representant = getNomRepresentant($res->telephone);
		  				echo "<tr>";
		  				echo "<td align='center'><button class='btn btn-light'>".$representant->prenom." ".$representant->nom."</button></td>";
		  				echo "<td align='center'>".$representant->email."</td>";
		  				echo "<td align='center'>".$res->nom."</td>";
		  				echo "<td align='center'>".$res->telephone."</td>";
		  				echo "<td align='center'>".$res->adresse."</td>";
		  				echo "<td align='center'>".$res->code_postal."</td>";
		  				echo "<td align='center'>".$res->ville."</td>";
		  				if($res->bulletin_retourne == null)
		  				{
		  					echo "<td align='center'>Pas encore recu</td>";
		  				}
		  				else
		  				{
		  					echo "<td align='center'>".$res->bulletin_retourne."</td>";
		  				}

		  				echo "</tr>";

		  				$i++;
		  			}
		  		?>
		  	</tbody>
		</table>
	</center>
</br></br>
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<?php for($i = 1; $i <= $nbPage; $i++): ?>
				<?php if($i == $cPage): ?>
					<li class="page-item">
						<a style="color: black; background-color: #689E75;" class="page-link" href="..\SFB\accueil.php?page=<?= $i ?>"><?= $i ?></a>
					</li>
				<?php else: ?>
					<li class="page-item">
						<a style="color: black;" class="page-link" href="..\SFB\accueil.php?page=<?= $i ?>"><?= $i ?></a>
					</li>
				<?php endif; ?>
			<?php endfor; ?>
		</ul>
	</nav>
</br></br>
<?php else: ?>
	</br>
	</br>
	</br>
	<div class="container">
		<div class="alert alert-warning" role="alert"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>&nbsp;&nbsp;Vous n'avez pas les droits pour visualiser la base de donnée</div>
	</div>
<?php endif; ?>

<?php require "include/footer.php"; ?>