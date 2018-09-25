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

	function countLigne($table)
	{
		$pdo = connexionBaseDeDonnee();
		$requete = "SELECT count(*) as nb FROM ".$table;
		$req = $pdo->query($requete);
		$donnees = $req->fetch();
		return $donnees->nb;
	}

	function bulletinRetourne($nom)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare('SELECT bulletin_retourne FROM adherent WHERE nom = ?');

	    $req->execute([$nom]);

	    $result = $req->fetch();

	    if(empty($result->bulletin_retourne))
	    {
	    	return false;
	    }

	    return true;
	}

	function checkEmail($email)
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->prepare('SELECT id_connexion FROM connexion WHERE email = ?');
		
		$query->execute([$email]);
		
		$mail = $query->fetch();

		if($mail != null)
		{
			return true;
		}

		return false;
	}

	function insertRepresentant($nom, $prenom, $email)
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->prepare("INSERT INTO representant SET nom = ?, prenom = ?, email = ?");

		
		$query->execute([$nom, $prenom, $email]);


		$req = $pdo->prepare("INSERT INTO adherent SET id_representant = (SELECT id_representant FROM representant WHERE id_representant=LAST_INSERT_ID());");

		$req->execute();
	}

	function insertAdherent($nom_entreprise, $adresse, $code_postal, $ville, $telephone, $bulletin)
	{
		$pdo = connexionBaseDeDonnee();

		$reqp = $pdo->query("SELECT id_representant FROM adherent ORDER BY id_representant DESC LIMIT 1");

		$result = $reqp->fetch();

		$query = $pdo->prepare("UPDATE adherent SET id_representant = ?, nom = ?, adresse = ?, code_postal = ?,
			                    ville = ?, telephone = ?, bulletin_retourne = ?
			                    WHERE id_representant = ?"
							  );
		
		$query->execute([$result->id_representant, $nom_entreprise, $adresse, $code_postal, $ville, $telephone, $bulletin, $result->id_representant]);
	}

	function getAllInformation()
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->query("SELECT * FROM adherent");

		return $req;
	}

	function getNomRepresentant($numero_tel)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare("SELECT representant.nom, representant.prenom, representant.email 
			                  FROM representant 
			                  INNER JOIN adherent 
			                  ON representant.id_representant = adherent.id_representant 
			                  WHERE adherent.telephone = ?"
			                );

		$req->execute([$numero_tel]);

		$result = $req->fetch();

		return $result;
	}

	function connexionApplication($email)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare('SELECT * FROM connexion WHERE email = ?');

	    $req->execute([$email]);
	    $user = $req->fetch();

	    return $user;
	}

	function insertConnexion($email, $mot_de_passe)
	{
		$pdo = connexionBaseDeDonnee();

		$mot_de_passe = password_hash($mot_de_passe, PASSWORD_BCRYPT);

		$query = $pdo->prepare("INSERT INTO connexion SET email = ?, mot_de_passe = ?");

		$query->execute([$email, $mot_de_passe]);
	}

	function droitBdd($email)
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->prepare("SELECT membre FROM connexion WHERE email = ?");

		$query->execute([$email]);

		$droit = $query->fetch();

		if($droit->membre == 1)
		{
			return true;
		}

		return false;
	}
?>