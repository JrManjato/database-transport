--36-Les clients qui ont choisis telle offre pour tel voyage : EASY : UTILITY(8)

select nom_client,prenom_client, type from reserver
INNER JOIN offre ON reserver.id_offre = offre.id_offre
INNER JOIN client ON reserver.id_client = client.id_client;

