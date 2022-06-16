--pour afficher tous les places reservés dans une voiture
select nom_client,place,nom_vehicules from client inner join reserver inner join vehicules on
 reserver.id_vehicule = vehicules.id_vehicule on 
 reserver.id_client = client.id_client order by nom_client;