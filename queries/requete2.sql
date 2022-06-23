--pour afficher les clients qui n'ont pas encore effectuer leurs payement--
select nom_client from client inner join reserver inner join offre on reserver.id_offre = offre.id_offre 
on client.id_client = reserver.id_client where 
(reserver.id_offre=3 and montant_paye <(select tarif from offre where id_offre=3)) or
(reserver.id_offre=2 and montant_paye<(select tarif from offre where id_offre=2 ))or
(reserver.id_offre=1 and montant_paye<(select tarif from offre where id_offre=1));
