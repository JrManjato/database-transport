--29-Benefice selon le type d'offre : MEDIUM/HARD : UTILITY(9)

--Création d'un vu pour pouvoir récupérer les tarifs puis en faire le produit de ces tarifs avec leur nombre d'occurrence dans la table réservation.

create VIEW tarifAndCount as select tarif, count(reserver.id_offre) from reserver
INNER JOIN offre ON offre.id_offre = reserver.id_offre group by tarif;

--Produit de tarif avec le nombre d'occurrence.

select tarif*count as product from tarifAndCount; 