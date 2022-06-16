--pour afficher le nombre de client en moyenne qui paye le jour du reservation la totalite du frais 
create view nombre_moyen_client as
(select count(nom_client)/count(distinct date_reservation)as nombre_de_clients from reserver inner join client 
on reserver.id_client = client.id_client where 
(id_offre=1 and montant_paye=10000)or(id_offre=2 and montant_paye=20000)or(id_offre=3 and montant_paye=30000));