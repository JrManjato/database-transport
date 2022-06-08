--03-Afficher les  départs de nuit : BASIC : UTILITY(10)

select * from voyage where heure_depart > '18:00' and heure_depart < '24:00' or heure_depart < '06:00' and heure_depart >= '00:00';
