--15-Afficher les offres les plus fréquemment achetées : MEDIUM : UTILITY(10)

--Créer view pour compter et regrouper par type les offres
create view CountTypeOffre as select type, count(reserver.id_offre) from reserver
INNER JOIN offre ON offre.id_offre = reserver.id_offre group by type;

--Relever le type qui a le plus de compte
SELECT type from CountTypeOffre where count = (select max(count) from CountTypeOffre);
