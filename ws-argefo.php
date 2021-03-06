<?php
	
	header('Content-type: text/xml');

	require "include/db.php";

	if(isset($_GET['siret']))
	{

		//$bool = bulletinRetourne($_GET['siret']);
		$bool = isMember($_GET['siret']);

		$result = getInformationEntreprise($_GET['siret']);

		$num = countLigne("adherent");

		$posts = array();

		if($num > 0)
		{
			while($post = $result->fetch(PDO::FETCH_ASSOC)) 
			{
				$posts[] = array('Entreprise'=>$post);

			}	
		}

		if($bool)
		{
			echo '<WebService>';
			foreach($posts as $index => $post) 
			{
				if(is_array($post)) 
				{
					foreach($post as $key => $value) 
					{
						echo '<Entity>';
						if(is_array($value))
						{
							foreach($value as $tag => $val) 
							{
								echo '<',$tag,'>',htmlentities($val),'</',$tag,'>';
							}
						}
						echo '<Response>True</Response>';
						echo '</Entity>';
					}
				}
			}
			echo '</WebService>';
		}
		else
		{
			echo "<WebService>";
				echo "<Response>False</Response>";
			echo "</WebService>"; 
		}
		
	}
	else
	{
		echo "<WebService>";
			echo "<Response>Aucune donnée à afficher</Response>";
		echo "</WebService>"; 
	}
?>
