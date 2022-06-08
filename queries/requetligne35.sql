--mettre la date d'aujourd'hui afin de pouvoir tester

toky_trans1=# insert into voyage (jour_depart, heure_depart, id_ville_depart, id_ville_arrivee) values ('2022/06/08', '15:00', '8', '5');
INSERT 0 1
-- puis ecrire et executer les requets
toky_trans1=# select nom_client,prenom_client from client INNER JOIN voyage ON client.id_client = voyage.id_voyage WHERE jour_depart = current_date;
 