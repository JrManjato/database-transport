--pour afficher Les véhicules utilisés pour un voyage.--
create view vehicules_pour_voyage as (select id_voyage , nom_vehicules , matricule from
 voyage inner join vehicules on voyage.id_vehicule = vehicules.id_vehicule);