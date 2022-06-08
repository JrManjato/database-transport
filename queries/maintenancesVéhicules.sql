--20-L'essence ou la maintenance des véhicules : MEDIUM/HARD : UTILITY(10)

--Création d'un vu pour pouvoir récupérer les couts puis en faire la somme de ces couts.

create view CoutMaintenance as SELECT cout, matricule from requerir
INNER JOIN vehicules ON vehicules.id_vehicule = requerir.id_vehicule
INNER JOIN maintenance ON maintenance.id_maintenance = requerir.id_maintenance;

--Calcul de la somme à partir de la table CoutMaintenance

select SUM (cout) from CoutMaintenance;