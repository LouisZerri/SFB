<?php

	session_start();

	require "include/header.php";

	require "include/db.php";

	$donnees = getAllInformation();

	$droit = droitBdd($_SESSION['auth']->email);

?>
<center>
	<img src="style/page.png">
</center>
<?php if($droit): ?>
	</br></br>
	<div class="container">
		<table class="table table-striped">
	  		<thead>
			    <tr>
			      <th scope="col"><center><i class="fa fa-user"></i>&nbsp;Contact</center></th>
			      <th scope="col"><center><i class="fa fa-building"></i>&nbsp;Entreprise</center></th>
			      <th scope="col"><center><i class="fa fa-phone"></i>&nbsp;Téléphone</center></th>
			      <th scope="col"><center><i class="fa fa-map-marker"></i>&nbsp;Adresse</center></th>
			      <th scope="col"><center><i class="fa fa-address-card-o"></i>&nbsp;Code postal</center></th>
			      <th scope="col"><center><i class="fa fa-building-o"></i>&nbsp;Ville</center></th>
			    </tr>
	  		</thead>
		  	<tbody>
		  		<?php
		  			$i = 1;
		  			while($res = $donnees->fetch())
		  			{

		  				$representant = getNomRepresentant($res->nom);
		  				echo "<tr>";
		  				echo "<td align='center'><button class='btn btn-light' id='pop$i' data-toggle='popover' data-trigger='focus' title='Informations complementaires' data-content='Email : $representant->email'>".$representant->nom." ".$representant->prenom."</button></td>";
		  				echo "<td align='center'>".$res->nom."</td>";
		  				echo "<td align='center'>".$res->telephone."</td>";
		  				echo "<td align='center'>".$res->adresse."</td>";
		  				echo "<td align='center'>".$res->code_postal."</td>";
		  				echo "<td align='center'>".$res->ville."</td>";
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
	</div>
<?php else: ?>
	</br>
	</br>
	</br>
	<div class="container">
		<div class="alert alert-warning" role="alert"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>&nbsp;&nbsp;Vous n'avez pas les droits pour visualiser la base de donnée</div>
	</div>
<?php endif; ?>

<?php require "include/footer.php"; ?>