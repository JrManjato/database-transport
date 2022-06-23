--pour afficer Combien de clients n'ont pas encore effectuer leur payement en totalite.--
select count (montant_paye) from reserver inner join offre on reserver.id_offre = offre.id_offre where
(reserver.id_offre=3 and montant_paye < (select tarif from offre where id_offre=3)) or
(reserver.id_offre=2 and montant_paye<(select tarif from offre where id_offre=2 ))or
(reserver.id_offre=1 and montant_paye<(select tarif from offre where id_offre=1));

 
