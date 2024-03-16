/*Commentaire*/
SELECT *    /* tout sélectionner */

SELECT -- tout sélectionner sur une ligne
FROM


/*---------------------------------------------------------------*/
/*Création de BASE*/
CREATE DATABASE ma_base

/*Création de BDD sans retourner d'erreur si une base a le meme nom 
et elle ne sera pas écrasé*/
CREATE DATABASE IF NOT EXISTS ma_base


/*---------------------------------------------------------------*/
/*Supprimer une base et tout ce qu'il y a dans la base*/
DROP DATABASE ma_base
/*Permet de ne pas afficher d'erreur si la base n'existe pas*/
DROP DATABASE IF EXISTS ma_base


/*----------------------------------------------------------------*/
/*Création de TABLE*/
CREATE TABLE utilisateur
(
    id INT PRIMARY KEY NOT NULL,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(255),
    date_naissance DATE,
    pays VARCHAR(255),
    ville VARCHAR(255),
    code_postal VARCHAR(5),
    nombre_achat INT
)


/*----------------------------------------------------------------*/
/*Cle primaire*/
CREATE TABLE nom_de_la_table (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  [...]
);


/*----------------------------------------------------------------*/
/*Auto_incrementation*/
CREATE TABLE `nom_de__la_table` (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  [...]
);
/*Changer la valeur initiale de l'incrementation*/
ALTER TABLE `nom_de__la_table` AUTO_INCREMENT=50;


/*----------------------------------------------------------------*/
/*Ajouter 2 clients fictifs*/
CREATE TABLE `client` (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nom VARCHAR(50),
  email VARCHAR(50),
);
-- Ajouter 2 lignes de contenu sans définir de valeur pour `id`
INSERT INTO `client` (`nom`, `email`) VALUES ('Paul', 'paul@example.com');
INSERT INTO `client` (`nom`, `email`) VALUES ('Sandra', 'sandra@example.com');


/*---------------------------------------------------------------*/
/*SQL ALTER TABLE -> supprimer, modifier, ajouter une colonne*/
ALTER TABLE nom_table
instruction
/*Ajouter une colonne*/
ALTER TABLE nom_table             ==>      ALTER TABLE utilisateur
ADD nom_colonne type_donnees      ==>      ADD adresse_rue VARCHAR(255)
/*Supprimer une colonne*/
ALTER TABLE nom_table
DROP nom_colonne
/*Modifier une colonne sur MySQL*/
ALTER TABLE nom_table
MODIFY nom_colonne type_donnees
/*Modifier une colonne sur PostgreSQL*/
ALTER TABLE nom_table
ALTER COLUMN nom_colonne TYPE type_donnees
/*Renommer une colonne sur MySQL*/
ALTER TABLE nom_table
CHANGE colonne_ancien_nom colonne_nouveau_nom type_donnees
/*Renommer une colonne sur PostgreSQL*/
ALTER TABLE nom_table
RENAME COLUMN colonne_ancien_nom TO colonne_nouveau_nom


/*----------------------------------------------------------*/
/*Supprimer une table*/
DROP TABLE nom_table


/*----------------------------------------------------------*/
/*INSERT INTO -> insérer des lignes*/
INSERT INTO 'table' (prenom, nom, ville, age) 
VALUES ('valeur 1', 'valeur 2', ...) --> pour une ligne
/*Pour plusieurs lignes*/
INSERT INTO client (prenom, nom, ville, age)
 VALUES
 ('Rébecca', 'Armand', 'Saint-Didier-des-Bois', 24),
 ('Aimée', 'Hebert', 'Marigny-le-Châtel', 36),
 ('Marielle', 'Ribeiro', 'Maillères', 27),
 ('Hilaire', 'Savary', 'Conie-Molitard', 58);


/*-------------------------------------------------------------*/
/*UPDATE pour une valeur*/
UPDATE table
SET nom_colonne_1 = 'nouvelle valeur'
WHERE condition
/*UPDATE pour plusieurs valeurs*/
UPDATE table
SET colonne_1 = 'valeur 1', colonne_2 = 'valeur 2', colonne_3 = 'valeur 3'
WHERE condition
/*Modifier une ligne entiere*/
UPDATE client
SET rue = '49 Rue Ameline',
  ville = 'Saint-Eustache-la-Forêt',
  code_postal = '76210'
WHERE id = 2
/*Modifier toutes les lignes*/
UPDATE client
SET pays = 'FRANCE'


/*---------------------------------------------------*/
/*TRUNCATE -> Supprimer toutes les données d'une table sans supp la table 
!!!Attention à la ré-initialiser de la valeur de l’auto-incrément!!!!*/
TRUNCATE TABLE `table`


/*----------------------------------------------------*/
/*Delete -> !!!Attention si ont ne met pas where toutes les lignes seront supp!!!*/
/*!!!ATTENTION il n'y a pas de réinitialisation*/
DELETE FROM `table`
WHERE condition
/*Supprimer une ligne*/
DELETE FROM `utilisateur`
WHERE `id` = 1
/*Supprimer plusieurs lignes*/
DELETE FROM `utilisateur`
WHERE `date_inscription` < '2012-04-10'


/*--------------------------------------------------------*/
/*SELECT*/
SELECT "nom du champ" FROM "nom du tableau" --Pour selectionner un champ dans un tableau
SELECT * FROM "nom du tableau" --Selectionne tous les champs dans un tableau "mais ne pas utiliser avec une application"

/*-------------------------------------------------------------*/
/*DISTINCT*/
SELECT DISTINCT "nom du champ" FROM "nom du tableau" --evite les doublons exemeple : 2x le meme prenom


/*-------------------------------------------------------------*/
/*WHERE*/
SELECT "nom_colonnes" FROM "nom_table" WHERE "condition" -- pour avoir plus de precision dans notre recherche exemple touts les clients habitant a paris "WHERE = Paris"
Opérateur	Description
=	: Égale
<>	: Pas égale
!=	: Pas égale
>	: Supérieur à
<	: Inférieur à
>=	: Supérieur ou égale à
<=	: Inférieur ou égale à
IN	: Liste de plusieurs valeurs possibles
BETWEEN	: Valeur comprise dans un intervalle donnée (utile pour les nombres ou dates)
LIKE :	Recherche en spécifiant le début, milieu ou fin d'un mot.
IS NULL	: Valeur est nulle
IS NOT NULL	: Valeur n'est pas nulle

/*------------------------------------------------------------------------*/
/*AND et OR*/
/*AND*/
SELECT nom_colonnes
FROM nom_table
WHERE condition1 AND condition2
/*OR*/
SELECT nom_colonnes FROM nom_table
 WHERE condition1 OR condition2

 /*----------------------------------------------------------------------*/
 /*IN*/
 