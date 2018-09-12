<?php

	session_start();

	require "include/header.php";

	require "include/db.php";

	$donnees = getAllInformation();

	$droit = 1;

?>
<center>
	<img src="style/page.png">
</center>
<?php if($droit): ?>
	</br></br>
	<center>
		<table style="width: 95%;" class="table table-striped">
	  		<thead>
			    <tr>
			      <th scope="col">Entreprise</th>
			      <th scope="col">Localisation</th>
			      <th scope="col">Téléphone</th>
			      <th scope="col">Activité</th>
			      <th scope="col">Nombre de salariés</th>
			      <th scope="col">Siret</th>
			      <th scope="col">Chiffre d'Affaire</th>
			    </tr>
	  		</thead>
		  	<tbody>
		  		<?php
		  			$i = 1;
		  			while($res = $donnees->fetch())
		  			{

		  				$representant = getNomRepresentant($res->nom);
		  				echo "<tr>";
		  				echo "<td align='center'>".$res->nom."<b style='font-size: 12px;'><i></br>Representant : <button class='btn btn-light' id='pop$i' data-toggle='popover' data-trigger='focus' title='Informations complementaires' data-content='Email : $representant->email </br> Téléphone : $representant->telephone'>".$representant->nom." ".$representant->prenom."</button></b></td>";
		  				echo "<td>".$res->adresse."</br>".$res->code_postal."</br>".$res->ville."</td>";
		  				echo "<td align='center'>".$res->telephone."</td>";
		  				echo "<td align='center'>".$res->activite."</td>";
		  				echo "<td align='center'>".$res->nb_salaries."</td>";
		  				echo "<td align='center'>".$res->num_siret."</td>";
		  				echo "<td align='center'>".$res->dernier_CA_ht_annuel."</td>";
		  				echo "</tr>";

		  				$i++;
		  				?>
		  				<script>
							$(function () {
								$('#pop1').popover({
						    		container: 'body',
						    		html: true
						  		})
						  		$('#pop<?= $i ?>').popover({
						    		container: 'body',
						    		html: true
						  		})
							})
						</script>
						<?php
		  			}
		  			?>

		  	</tbody>
		</table>
	</center>
<?php else: ?>
	</br>
	</br>
	</br>
	<div class="container">
		<div class="alert alert-warning" role="alert"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>&nbsp;&nbsp;Vous n'avez pas les droits pour visualiser la base de donnée</div>
	</div>
<?php endif; ?>

<?php require "include/footer.php"; ?>