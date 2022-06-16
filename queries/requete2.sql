--pour afficher les clients qui n'ont pas encore effectuer leurs payement--
select nom_client from client inner join reserver on client.id_client = reserver.id_client where (id_offre=3 and montant_paye<30000) 
or (id_offre=2 and montant_paye<20000) or (id_offre=1 and montant_paye<10000);