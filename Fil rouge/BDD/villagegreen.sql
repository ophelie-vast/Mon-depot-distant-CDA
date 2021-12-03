DROP DATABASE IF EXISTS villagegreen;

CREATE DATABASE villagegreen;

USE villagegreen;

CREATE TABLE fournisseur(
   id_fournisseur INT AUTO_INCREMENT NOT NULL,
   nom_fournisseur VARCHAR(50) ,
   prenom_fournisseur VARCHAR(50) ,
   adresse_fournisseur VARCHAR(50) ,
   ville_fournisseur VARCHAR(50) ,
   cp_fournisseur VARCHAR(5) ,
   telephone_fournisseur VARCHAR(10) ,
   PRIMARY KEY(id_fournisseur)
);

CREATE TABLE commercial(
   id_commercial INT AUTO_INCREMENT NOT NULL,
   nom_commercial VARCHAR(50) ,
   prenom_commercial VARCHAR(50) ,
   PRIMARY KEY(id_commercial)
);

CREATE TABLE sous_categorie(
   id_sous_categorie INT AUTO_INCREMENT NOT NULL,
   nom_categorie VARCHAR(50) ,
   PRIMARY KEY(id_sous_categorie)
);

CREATE TABLE client(
   id_client INT AUTO_INCREMENT NOT NULL,
   nom_client VARCHAR(50) ,
   prenom_client VARCHAR(50) ,
   adresse_client VARCHAR(50) ,
   ville_client VARCHAR(50) ,
   cp_client VARCHAR(5) ,
   telephone_client VARCHAR(10) ,
   type_client VARCHAR(3),
   id_commercial INT DEFAULT NULL,
   PRIMARY KEY(id_client),
   FOREIGN KEY(id_commercial) REFERENCES commercial(id_commercial)
);

CREATE TABLE categorie(
   id_categorie INT AUTO_INCREMENT NOT NULL,
   nom_categorie VARCHAR(50) ,
   id_sous_categorie INT DEFAULT NULL,
   PRIMARY KEY(id_categorie),
   FOREIGN KEY(id_sous_categorie) REFERENCES sous_categorie(id_sous_categorie)
);

CREATE TABLE produit(
   id_produit INT AUTO_INCREMENT NOT NULL,
   nom_produit VARCHAR(50) ,
   prix_achat DECIMAL(15,2)  ,
   photo VARCHAR(50) ,
   stock_produit INT,
   libelle_long VARCHAR(1000),
   id_categorie INT DEFAULT NULL,
   id_fournisseur INT DEFAULT NULL,
   PRIMARY KEY(id_produit),
   FOREIGN KEY(id_categorie) REFERENCES categorie(id_categorie),
   FOREIGN KEY(id_fournisseur) REFERENCES fournisseur(id_fournisseur)
);

CREATE TABLE commande(
   id_commande INT AUTO_INCREMENT NOT NULL,
   detail_commande VARCHAR(50),
   date_commande DATE,
   prix_commande DECIMAL(15,2)  ,
   date_reglement DATE,
   reduction_commande DECIMAL(15,2)  ,
   adresse_livraison VARCHAR(50) ,
   ville_livraison VARCHAR(50) ,
   cp_livraison VARCHAR(5) ,
   adresse_facturation VARCHAR(50) ,
   ville_facturation VARCHAR(50) ,
   cp_facturation VARCHAR(5) ,
   id_client INT DEFAULT NULL,
   PRIMARY KEY(id_commande),
   FOREIGN KEY(id_client) REFERENCES client(id_client)
);

CREATE TABLE livraison(
   id_livraison INT AUTO_INCREMENT NOT NULL,
   bon_livraison VARCHAR(50) ,
   date_livraison DATE,
   date_expedition DATE,
   id_commande INT DEFAULT NULL,
   PRIMARY KEY(id_livraison),
   FOREIGN KEY(id_commande) REFERENCES commande(id_commande)
);

CREATE TABLE contient(
   id_produit INT,
   id_livraison INT,
   quantite_produit INT,
   PRIMARY KEY(id_produit, id_livraison),
   FOREIGN KEY(id_produit) REFERENCES produit(id_produit),
   FOREIGN KEY(id_livraison) REFERENCES livraison(id_livraison)
);

CREATE TABLE secomposede(
   id_produit INT,
   id_commande INT,
   quantite_commandé INT,
   PRIMARY KEY(id_produit, id_commande),
   FOREIGN KEY(id_produit) REFERENCES produit(id_produit),
   FOREIGN KEY(id_commande) REFERENCES commande(id_commande)
);
