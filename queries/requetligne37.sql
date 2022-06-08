--ligne 37 'afficher les chauffeurs qui vont conduire'
 select nom_complet,matricule from chauffeur INNER JOIN vehicules ON chauffeur.id_vehicule = vehicules.id_vehicule;