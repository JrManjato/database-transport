--req 38: afficher les details d'une voyage

	--jour depart, heure_depart,ville depart
	select jour_depart, heure_depart,nom_ville from voyage 
	inner join ville on voyage.id_ville_depart = ville.id_ville;
	
	--jour depart, heure_depart,ville dest
	select jour_depart, heure_depart,nom_ville from voyage 
	inner join ville on voyage.id_ville_arrivee = ville.id_ville;
	