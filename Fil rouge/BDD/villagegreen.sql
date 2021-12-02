DROP DATABASE IF EXISTS villagegreen;

CREATE DATABASE villagegreen;

USE villagegreen;

CREATE TABLE Fournisseur(
   Id_Fournisseur INT AUTO_INCREMENT,
   nom_fournisseur VARCHAR(50) ,
   prenom_fournisseur VARCHAR(50) ,
   adresse_fournisseur VARCHAR(50) ,
   ville_fournisseur VARCHAR(50) ,
   cp_fournisseur VARCHAR(5) ,
   telephone_fournisseur VARCHAR(10) ,
   PRIMARY KEY(Id_Fournisseur)
);

CREATE TABLE Commercial(
   Id_Commercial INT AUTO_INCREMENT,
   nom_commercial VARCHAR(50) ,
   prenom_commercial VARCHAR(50) ,
   PRIMARY KEY(Id_Commercial)
);

CREATE TABLE Sous_catégorie(
   Id_Sous_catégorie INT AUTO_INCREMENT,
   nom_categorie VARCHAR(50) ,
   PRIMARY KEY(Id_Sous_catégorie)
);

CREATE TABLE Client(
   Id_Client INT AUTO_INCREMENT,
   nom_client VARCHAR(50) ,
   prenom_client VARCHAR(50) ,
   adresse_client VARCHAR(50) ,
   ville_client VARCHAR(50) ,
   cp_client VARCHAR(5) ,
   telephone_client VARCHAR(10) ,
   type_client VARCHAR(3),
   Id_Commercial INT DEFAULT NULL,
   PRIMARY KEY(Id_Client),
   FOREIGN KEY(Id_Commercial) REFERENCES Commercial(Id_Commercial)
);

CREATE TABLE Catégorie(
   Id_Catégorie INT AUTO_INCREMENT,
   nom_categorie VARCHAR(50) ,
   Id_Sous_catégorie INT DEFAULT NULL,
   PRIMARY KEY(Id_Catégorie),
   FOREIGN KEY(Id_Sous_catégorie) REFERENCES Sous_catégorie(Id_Sous_catégorie)
);

CREATE TABLE Produit(
   Id_Produit INT AUTO_INCREMENT,
   nom_produit VARCHAR(50) ,
   prix_achat DECIMAL(15,2)  ,
   photo VARCHAR(50) ,
   stock_produit INT,
   libelle_long VARCHAR(1000) ,
   Id_Catégorie INT DEFAULT NULL,
   Id_Fournisseur INT DEFAULT NULL,
   PRIMARY KEY(Id_Produit),
   FOREIGN KEY(Id_Catégorie) REFERENCES Catégorie(Id_Catégorie),
   FOREIGN KEY(Id_Fournisseur) REFERENCES Fournisseur(Id_Fournisseur)
);

CREATE TABLE Commande(
   Id_Commande INT AUTO_INCREMENT,
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
   Id_Client INT DEFAULT NULL,
   PRIMARY KEY(Id_Commande),
   FOREIGN KEY(Id_Client) REFERENCES Client(Id_Client)
);

CREATE TABLE Livraison(
   Id_Livraison INT AUTO_INCREMENT,
   bon_livraison VARCHAR(50) ,
   date_livraison DATE,
   date_expedition DATE,
   Id_Commande INT DEFAULT NULL,
   PRIMARY KEY(Id_Livraison),
   FOREIGN KEY(Id_Commande) REFERENCES Commande(Id_Commande)
);

CREATE TABLE contient(
   Id_Produit INT,
   Id_Livraison INT,
   quantité_produit INT,
   PRIMARY KEY(Id_Produit, Id_Livraison),
   FOREIGN KEY(Id_Produit) REFERENCES Produit(Id_Produit),
   FOREIGN KEY(Id_Livraison) REFERENCES Livraison(Id_Livraison)
);

CREATE TABLE SeComposeDe(
   Id_Produit INT,
   Id_Commande INT,
   quantité_commandé INT,
   PRIMARY KEY(Id_Produit, Id_Commande),
   FOREIGN KEY(Id_Produit) REFERENCES Produit(Id_Produit),
   FOREIGN KEY(Id_Commande) REFERENCES Commande(Id_Commande)
);