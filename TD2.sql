/*Gestion des tables en SQL*/
/*---------------------------------*/

/*Consignes*/

/*--------------------------------*/
/*
1) Créer une base de données nommée « golf »
2) Créez une table nommée « utilisateurs » qui respectera les colonnes suivantes :
    Id, pk, auto_increment
    Firstname, varchar
    Lastname, varchar
    Email, longtext
3) Créez une table nommée « golfeurs » qui respectera les colonnes suivantes :
    Id, pk, auto_increment
    Firstname, varchar
    Lastname, varchar
    Email, longtext
4) Créez un nouveau golfeur : John LEGEND, j.legend@gmail.com
5) Créez un nouvel utilisateur : Jack SPARROW, jack_sparrow@yahoo.fr
6) Créez un nouveau golfeur : Tim COOK, tc@windobe.com
7) Créez un nouveau golfeur : Harley DAVIDSON, h-d@suzukiki.fr
8) Créez un nouvel utilisateur : david GOLIATH, jaibeaucoupriz@wanadoo.fr
9) Modifiez les tables « utilisateurs » et « golfeurs » pour y inclure la colonne suivante :
    Age, int, null
10) Renseignez l’âge de John LEGEND (78 ans) en vous basant sur son nom et son prénom
11) Renseignez l’âge de Jack SPARROW (2 ans) en vous basant sur son nom et son prénom
12) Renseignez l’âge de Tim COOK (30 ans) en vous basant sur son nom et son prénom
13) Renseignez l’âge de Harley DAVIDSON (200 ans) en vous basant sur son nom et son prénom
14) Renseignez l’âge de David GOLIATH (3000 ans) en vous basant sur son nom et son prénom
15) Modifier la table « golfeurs » en supprimant la colonne « Email »
16) Supprimer l'utilisateur david GOLIATH en vous basant sur son nom et son prénom
17) Supprimer le golfeur Tim COOK en vous basant sur son nom et son prénom
18) Vider les informations de la table « utilisateurs »
19) Vider les informations de la table « golfeurs »
20) Supprimer la base de données nommée « golf »
*/
/*-----------------------------------*/

/*1*/
CREATE DATABASE golf

/*2*/
CREATE TABLE utilisateurs
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    email LONGTEXT
);

/*3*/
CREATE TABLE golfeurs
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    email LONGTEXT
);

/*4*/
INSERT INTO golfeurs (firstname, lastname, email)
VALUES ('John', 'LEGEND', 'j.legend@gmail.com');

/*5*/
INSERT INTO utilisateurs (firstname, lastname, email)
VALUES ('Jack', 'SPARROW', 'jack_sparrow@yahoo.fr');

/*6-7*/
INSERT INTO golfeurs (firstname, lastname, email)
VALUES ('Tim', 'COOK', 'tc@windobe.com'),
('Harley', 'DAVIDSON', 'h-d@suzukiki.fr');

/*8*/
INSERT INTO utilisateurs (firstname, lastname, email)
VALUES ('david', 'GOLIATH', 'jaibeaucoupriz@wanadoo.fr');

/*9*/
ALTER TABLE utilisateurs
ADD Age VARCHAR(255);

ALTER TABLE golfeurs
ADD Age VARCHAR(255);

/*10*/
UPDATE golfeurs
SET Age = 78
WHERE firstname = "John" AND lastname = "LEGEND";

/*11*/
UPDATE utilisateurs
SET Age = 2
WHERE firstname = "Jack" AND lastname = "SPARROW";

/*12*/
UPDATE golfeurs
SET Age = 30
WHERE firstname = "Tim" AND lastname = "COOK";

/*13*/
UPDATE golfeurs
SET Age = 200
WHERE firstname = "Harley" AND lastname = "DAVIDSON";

/*14*/
UPDATE utilisateurs
SET Age = 3000
WHERE firstname = "David" AND lastname = "GOLIATH";

/*15*/
ALTER TABLE golfeurs
DROP COLUMN email

/*16*/
DELETE FROM utilisateurs
WHERE firstname = "David" AND lastname = "GOLIATH";

/*17*/
DELETE FROM golfeurs
WHERE firstname = "Tim" AND lastname = "COOK";

/*18*/
TRUNCATE TABLE utilisateurs

/*19*/
TRUNCATE TABLE golfeurs

/*20*/
DROP DATABASE golf