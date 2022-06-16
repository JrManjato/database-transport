--pour afficer Combien de clients n'ont pas encore effectuer leur payement en totalite.--
select count (montant_paye) from reserver where (id_offre=3 and montant_paye<30000) or (id_offre=2 and montant_paye<20000)
 or (id_offre=1 and montant_paye<10000);

 