 -- Req 19 : vérifier si une place X est encore disponible dans le véhicule XXX qui part ce jour,à cette heure et vers cette ville

select vg.id_voyage,vl.id_vehicule,places_dispo,jour_depart,heure_depart,id_ville_depart as ville_depart from utiliser u
 inner join voyage vg on u.id_voyage=vg.id_voyage 
 inner join vehicules vl
 on u.id_vehicule=vl.id_vehicule;
