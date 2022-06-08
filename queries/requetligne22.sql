
--ligne 22 misy tsy ampy kely iz ito

select nom_client, prenom_client, jour_depart from client INNER JOIN voyage ON client.id_client = voyage.id_voyage WHERE jour_depart ='2022-06-10';
 