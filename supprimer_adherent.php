<?php
	
	session_start();

	require 'include/db.php';

	if(isset($_GET['id']) && is_numeric($_GET['id']))
	{
		deleteAdherent($_GET["id"]);
		$_SESSION['flash']['success'] = "L'adhérent a été supprimé avec succès";
		header('Location: accueil');
	}
	else
	{
		$_SESSION['flash']['danger'] = "Erreur lors de la suppression de l'adhérent, veuillez réessayer";
		header('Location: accueil');
	}