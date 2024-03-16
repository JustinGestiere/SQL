/*Creation de BDD en SQL*/
/*---------------------------------*/

/*Consignes*/

/*--------------------------------*/
/*
1) Créer une base de données nommée "Toto"
2) Créer une base de données nommée "Tata"
3) Supprimer la base de données "Toto"
4) Créer une base de données nommée "toto"
5) Créer une base de données nommée "toto" (la BDD ne devra être créée que si une autre possédant le même nom n'existe pas déjà)
6) Supprimer la base de données "Tata"
7) Supprimer la base de données "toto"
*/
/*-----------------------------------*/

/*1*/
CREATE DATABASE Toto

/*2*/
CREATE DATABASE Tata

/*3*/
DROP DATABASE Toto

/*4*/
CREATE DATABASE toto

/*5*/
CREATE DATABASE IF NOT EXISTS toto

/*6*/
DROP DATABASE Tata

/*7*/
DROP DATABASE toto
