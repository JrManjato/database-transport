--pour afficher le nombre de client en moyenne par voyage--
select id_voyage,round(AVG(place)) as nbr_client_moyen from reserver   
group by id_voyage order by id_voyage asc;