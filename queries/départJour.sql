--04-Afficher les  départs de jour : BASIC : UTILITY(10)

select * from voyage where heure_depart >= '06:00' and heure_depart <= '18:00';
