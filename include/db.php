<?php

	function debug($var)
	{
		echo '<pre>'.print_r($var,true).'</pre>';
	}
	
	function connexionBaseDeDonnee()
	{
		$pdo = new PDO('mysql:host=localhost;dbname=argefo;charset=utf8', 'root', 'angeline');

		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

		return $pdo;
	}

	function getLesRepresentant($email)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare('SELECT * FROM representant WHERE email = ?');

	    $req->execute([$_POST['email']]);
	    $user = $req->fetch();

	    return $user;
	}

	function getNomEntreprise($nom_representant)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare('SELECT adherent.nom as nom_entreprise
							  FROM adherent 
							  INNER JOIN representant
							  ON representant.id_representant = adherent.id_representant
							  WHERE representant.nom = ?');
		
		$req->execute([$nom_representant]);

		$result = $req->fetch();

		return $result;
	}

	function getInformationEntreprise($nom_entreprise)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare('SELECT adherent.nom as Entreprise, representant.nom as RepresentantNom, representant.prenom as RepresentantPrenom
							  FROM adherent
							  INNER JOIN representant
							  ON representant.id_representant = adherent.id_representant
							  WHERE adherent.nom = ?');

		$req->execute([$nom_entreprise]);

	    return $req;
	}

	function getAllInformationEntreprise()
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->query('SELECT adherent.nom as Entreprise, representant.nom as Representant
							FROM adherent
						    INNER JOIN representant
					    	ON representant.id_representant = adherent.id_representant');

	    return $req;
	}

	function countLigne($table)
	{
		$pdo = connexionBaseDeDonnee();
		$requete = "SELECT count(*) as nb FROM ".$table;
		$req = $pdo->query($requete);
		$donnees = $req->fetch();
		return $donnees->nb;
	}

	function companyExist($nom)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare('SELECT nom FROM adherent WHERE nom = ?');

	    $req->execute([$nom]);

	    $result = $req->fetch();

	    if($result == null)
	    {
	    	return false;
	    }

	    return true;
	}

	function checkEmail($email)
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->prepare('SELECT id_representant FROM representant WHERE email = ?');
		
		$query->execute([$email]);
		
		$mail = $query->fetch();

		if($mail != null)
		{
			return true;
		}

		return false;
	}

	function insertRepresentant($nom, $prenom, $telephone, $email, $mot_de_passe)
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->prepare("INSERT INTO representant SET nom = ?, prenom = ?, telephone = ?, email = ?, mot_de_passe = ?");

		$mot_de_passe = password_hash($mot_de_passe, PASSWORD_BCRYPT);
		
		$query->execute([$nom, $prenom, $telephone, $email, $mot_de_passe]);


		$req = $pdo->prepare("INSERT INTO adherent SET id_representant = (SELECT id_representant FROM representant WHERE id_representant=LAST_INSERT_ID());");

		$req->execute();
	}

	function getIdRepresentant($nom)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare('SELECT id_representant FROM representant WHERE nom = ?');

	    $req->execute([$nom]);

	    $result = $req->fetch();
	}

	function insertAdherent($nom_entreprise, $adresse, $code_postal, $ville, $telephone, $activite, $nb_salaries, $num_siret, $chiffre_annuel)
	{
		$pdo = connexionBaseDeDonnee();

		$reqp = $pdo->query("SELECT id_representant FROM adherent ORDER BY id_representant DESC LIMIT 1");

		$result = $reqp->fetch();

		$query = $pdo->prepare("UPDATE adherent SET id_representant = ?, nom = ?, adresse = ?, code_postal = ?,
			                    ville = ?, telephone = ?, activite = ?, nb_salaries = ?, num_siret = ?, dernier_CA_ht_annuel = ?
			                    WHERE id_representant = ?"
							  );
		
		$query->execute([$result->id_representant, $nom_entreprise, $adresse, $code_postal, $ville, $telephone, $activite, $nb_salaries, $num_siret, $chiffre_annuel, $result->id_representant]);
	}

	function getAllInformation()
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->query("SELECT * FROM adherent");

		return $req;
	}

	function getNomRepresentant($nom_entreprise)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare("SELECT representant.nom, representant.prenom, representant.telephone, representant.email 
			                  FROM representant 
			                  INNER JOIN adherent 
			                  ON representant.id_representant = adherent.id_representant 
			                  WHERE adherent.nom = ?"
			                );

		$req->execute([$nom_entreprise]);

		$result = $req->fetch();

		return $result;
	}

?>