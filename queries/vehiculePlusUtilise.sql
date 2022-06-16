-- req 25: Afficher les véhicules les plus utilisés

select id_vehicule, count(*) from reserver 
group by id_vehicule 
order by id_vehicule asc;
