--06-Afficher les noms des clients qui n'ont pas encore payé leurs réservations : EASY : UTILITY(10)

select nom_client,prenom_client, type ,tarif, montant_paye from reserver
INNER JOIN offre ON reserver.id_offre = offre.id_offre
INNER JOIN client ON reserver.id_client = client.id_client
and montant_paye < tarif ;