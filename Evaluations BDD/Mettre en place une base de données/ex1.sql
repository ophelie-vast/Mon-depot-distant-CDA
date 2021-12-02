DROP DATABASE IF EXISTS Eval;
CREATE DATABASE Eval;
USE Eval;

CREATE TABLE Client(
cli_num INT PRIMARY KEY auto_increment,
cli_nom VARCHAR(50),
cli_adresse VARCHAR(50),
cli_tel VARCHAR(30)
);

CREATE TABLE Commande(
com_num INT PRIMARY KEY auto_increment,
cli_num INT,
com_date DATETIME,
com_obs VARCHAR(50),
FOREIGN KEY (cli_num) REFERENCES Client(cli_num)
);

CREATE TABLE Produit(
pro_num INT PRIMARY KEY auto_increment,
pro_libelle VARCHAR(50),
pro_description VARCHAR(50)
);

CREATE TABLE est_compose(
com_num INT,
pro_num INT,
est_qte INT,
PRIMARY KEY (com_num,pro_num),
FOREIGN KEY (com_num) REFERENCES Commande (com_num),
FOREIGN KEY (pro_num) REFERENCES Produit (pro_num)
);


CREATE INDEX indexclient ON Client(cli_nom);
