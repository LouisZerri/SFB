<?php
	
	session_start();

	require "include/header.php";
?>

<div class="container">
	<center>
		<img src="style/page.png">
	</center>
	</br></br>
	<div class="card">
  		<div class="card-body">
    		<label for="basic-url">Entrer le nom de l'entreprise ci dessous :</label>
				<div class="input-group mb-3">
  					<div class="input-group-prepend">
    					<span class="input-group-text" id="basic-addon3">Exemple : Pepperbay</span>
  					</div>
  					<input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">&nbsp;&nbsp;
  					<a id="valider" class="btn btn-success" href="" role="button">Valider</a>&nbsp;&nbsp;
  					<a class="btn btn-danger" href="accueil.php" role="button">Retour</a>
				</div>
  			</div>
		</div>
	</div>
</div>

<?php
	
	include "include/footer.php";
?>

<script type="text/javascript">
	$(function () {
		$("#valider").click(function(){
			a = $("#basic-url").val();
			$('#valider').attr('href', 'ws-argefo.php?entreprise='+a);
		})
	})
</script>