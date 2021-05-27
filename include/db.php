<?php

	function debug($var)
	{
		echo '<pre>'.print_r($var,true).'</pre>';
	}
	
	function connexionBaseDeDonnee()
	{
		$pdo = new PDO('mysql:host=localhost;port=3308;dbname=base_argefo;charset=utf8', 'root', '');
		//$pdo = new PDO('mysql:host=localhost;dbname=sfb_base_argefo;charset=utf8', 'root', 'xsys6844');

		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

		return $pdo;
	}

	function getInformationEntreprise($siret)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare('SELECT adherent.nom as Entreprise, representant.nom as RepresentantNom, representant.prenom as RepresentantPrenom
							  FROM adherent
							  INNER JOIN representant
							  ON representant.id_representant = adherent.id_representant
							  WHERE adherent.siret = ?');

		$req->execute([$siret]);

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

	//On teste si la personne est adhérent à la SFB en testant sur les bulletins retourné
	function bulletinRetourne($siret)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare('SELECT bulletin_retourne FROM adherent WHERE siret = ?');

	    $req->execute([$siret]);

	    $result = $req->fetch();

	    if(empty($result->bulletin_retourne))
	    {
	    	return false;
	    }

	    return true;
	}

	//A remplacer si on teste si la personne est adherente ou non seulement en sachant si elle est dans la base de donnée ou pas
	function isMember($siret)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare('SELECT id_adherent FROM adherent WHERE siret = ?');

		$req->execute([$siret]);

		$result = $req->fetch();

		if($result)
		{
			return true;
		}

		return false;
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

        	$query = $pdo->prepare("INSERT INTO representant (nom, prenom, email) VALUES (?, ?, ?)");

		$query->execute([$nom, $prenom, $email]);

        	return (int)($pdo->query("SELECT LAST_INSERT_ID()")->fetchColumn());
	}

	function insertAdherent($representantId, $nom_entreprise, $adresse, $code_postal, $ville, $telephone, $siret, $bulletin)
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->prepare("INSERT INTO adherent (id_representant, nom, adresse, code_postal, ville, 
            telephone, siret, bulletin_retourne) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
		
		$query->execute([$representantId, $nom_entreprise, $adresse, $code_postal, $ville, $telephone, $siret, $bulletin]);
	}

	function getAllInformation($cpage,$pagination)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->query("SELECT * FROM adherent ORDER BY nom ASC LIMIT ".(($cpage - 1)*$pagination).",$pagination");

		return $req;
	}

	function getNomRepresentant($numero_tel)
	{
		$pdo = connexionBaseDeDonnee();

		$req = $pdo->prepare("SELECT representant.id_representant as id_representant, representant.nom, representant.prenom, representant.email 
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

	function countElement()
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->query("SELECT count(id_adherent) as nb_adherent FROM adherent");

		$res = $query->fetch();
		
		return $res;
	}

	function recuperationAdherentById($id)
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->prepare("SELECT representant.nom as nom_representant, prenom, email, adherent.nom as nom_adherent, adresse, code_postal, ville, telephone, siret, bulletin_retourne 
								FROM representant 
								INNER JOIN adherent 
								ON representant.id_representant = adherent.id_representant 
								WHERE representant.id_representant = ?");
		$query->execute([$id]);

		$res = $query->fetch();

		return $res;
	}

	function updateAdherent($id, $nom_entreprise, $adresse, $code_postal, $ville, $telephone, $siret, $bulletin)
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->prepare("UPDATE adherent SET id_representant = ?, nom = ?, adresse = ?, code_postal = ?, ville = ?, telephone = ?, siret = ?, bulletin_retourne = ? WHERE id_representant = ?");

		$query->execute([$id, $nom_entreprise, $adresse, $code_postal, $ville, $telephone, $siret, $bulletin, $id]);
	}

	function updateRepresentant($id, $nom, $prenom, $email)
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->prepare("UPDATE representant SET nom = ?, prenom = ?, email = ? WHERE id_representant = ?");

		$query->execute([$nom, $prenom, $email, $id]);
	}

	function getInformationForFilter()
	{
		$pdo = connexionBaseDeDonnee();

		$query = $pdo->prepare("SELECT representant.id_representant as id_representant, representant.nom as nom_representant, prenom, email, adherent.nom as nom_adherent, adresse, code_postal, ville, telephone, siret, bulletin_retourne 
								FROM representant 
								INNER JOIN adherent 
								ON representant.id_representant = adherent.id_representant ORDER BY adherent.nom ASC");
		$query->execute();

		$res = $query->fetchAll();

		return $res;
	}

	function deleteAdherent($id)
	{
		$pdo = connexionBaseDeDonnee();

		$query1 = $pdo->prepare("DELETE FROM adherent WHERE id_representant = ?");

		$query2 = $pdo->prepare("DELETE FROM representant WHERE id_representant = ?");

		$query1->execute([$id]);

		$query2->execute([$id]);

	}
?>
