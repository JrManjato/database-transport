create database coperative;

\c coperative;

create table vehicules
(
    id_vehicule serial primary key,
    nombre_places int not null,
    places_dispo int not null,
    matricule varchar(150) not null
);

create table chauffeur
(
    id_chauffeur serial primary key,
    nom_complet varchar(150) not null,
    contact_chauffeur varchar(15),
    mat_chauffeur varchar(150),
    id_vehicule int references vehicules(id_vehicule)
);

create table voyage
(
    id_voyage serial primary key,
    jour_depart Date not null,
    heure_depart time,
    id_ville_depart int references ville(id_ville),
    id_ville_arriver int references ville(id_ville)
);

create table utiliser
(
    id int PRIMARY KEY,
    id_vehicule int references vehicules(id_vehicule),
    id_voyage int references voyage(id_voyage)
);

create table ville
(
    id_ville serial primary key,
    nom_ville varchar(100)
);

create table maintenance
(
    id_maintenance serial PRIMARY KEY,
    cout int not NULL
);

create table requerir
(
    id_vehicule int REFERENCES vehicules(id_vehicule),
    id_maintenance int REFERENCES maintenance(id_maintenance),
    UNIQUE(id_vehicule, id_maintenance)
);

