--requet de la ligne43
toky_trans1=# select nom_client, prenom_client, jour_depart from client INNER JOIN voyage ON client.id_client = voyage.id_voyage WHERE jour_depart ='2022-06-10';