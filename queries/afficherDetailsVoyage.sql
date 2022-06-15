--req 38: afficher les details d'une voyage

select jour_depart, heure_depart, v1.nom_ville as ville_depart , v2.nom_ville as ville_arrivee from voyage 
	inner join ville as v1 on voyage.id_ville_depart = v1.id_ville
	inner join ville as v2 on voyage.id_ville_arrivee = v2.id_ville;
	
