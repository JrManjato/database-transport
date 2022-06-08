--12: afficher les client qui vont voygager et qui n'ont pas encore payer l'integralite de leurs frais.
	
	select nom_client, prenom_client,type ,tarif, montant_paye  from reserver
	INNER JOIN offre ON reserver.id_offre = offre.id_offre
	INNER JOIN client ON reserver.id_client = client.id_client
	INNER JOIN voyage ON client.id_client = voyage.id_voyage 
	WHERE montant_paye < tarif;