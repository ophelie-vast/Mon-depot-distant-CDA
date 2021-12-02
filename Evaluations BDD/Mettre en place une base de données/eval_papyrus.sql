DROP DATABASE IF EXISTS papyrus;

CREATE DATABASE papyrus;

USE papyrus;

CREATE TABLE `fournis` (
  `numfou` INT NOT NULL,
  `nomfou` VARCHAR(25),
  `ruefou` VARCHAR(50),
  `posfou` CHAR(5),
  `vilfou` VARCHAR(30),
  `confou` VARCHAR(15),
  `satisf` INT,
  PRIMARY KEY (`numfou`)
);

INSERT INTO `fournis` (`numfou`, `nomfou`, `ruefou`, `posfou`, `vilfou`, `confou`, `satisf`) VALUES

    (00120, 'GROBRIGAN','20 rue du papier','92200','Papercity','Georges',08),
    (00540, 'ECLIPSE', '53, rue laisse flotter les rubans', '78250', 'Bugbugville', 'Nestor', 07),
    (08700, 'MEDICIS', '120 rue des plantes', '75014', 'Paris', 'Lison', 0),
    (09120, 'DISCOBOL', '11 rue des sports', '85100', 'La Roche sur Yon', 'Hercule', 08),
    (09150, 'DEPANPAP', '26, avenue des locomotives', '59987', 'Coroncountry', 'Pollux', 05),
    (09180, 'HURRYTAPE', '68, boulevard des octets', '04044', 'Dumpville', 'Track', 0);

CREATE TABLE `produit` (
  `codart` CHAR(4) NOT NULL,
  `libart` VARCHAR(30),
  `stkale` INT,
  `stkphy` INT,
  `qteann` INT,
  `unimes` CHAR(5),
  PRIMARY KEY (`codart`)
);

INSERT INTO `produit` (`codart`, `libart`, `stkale`, `stkphy`, `qteann`, `unimes`) VALUES

    ('I100', 'Papier 1 ex continu', 100, 557, 3500, 'B1000'),
    ('I105', 'Papier 2 ex continu', 75, 5, 2300, 'B1000'),
    ('I108', 'Papier 3 ex continu', 200, 557, 3500, 'B500'),
    ('I110', 'Papier 4 ex continu', 10, 12, 63, 'B400'),
    ('P220', 'Pré imprimé commande', 500, 2500, 24500, 'B500'),
    ('P230', 'Pré imprimé facture', 500, 250, 12500, 'B500'),
    ('P240', 'Pré imprimé bulletin paie', 500, 3000, 6250, 'B500'),
    ('P250', 'Pré imprimé bon livraison', 500, 2500, 24500, 'B500'),
    ('P270', 'Pré imprimé bon fabrication', 500, 2500, 24500, 'B500'),
    ('R080', 'Ruban Epson 850', 10, 2, 120, 'unité'),
    ('R132', 'Ruban imp1200 lignes', 25, 200, 182, 'unité'),
    ('B002', 'Bande magnétique 6250', 20, 12, 410, 'unité'),
    ('B001', 'Bande magnétique 1200', 20, 87, 240, 'unité'),
    ('D035', 'CD R slim 80 mm', 40, 42, 150, 'B010'),
    ('D050', 'CD R-W 80mm', 50, 4, 0, 'B010');

CREATE TABLE `entcom` (
  `numcom` INT NOT NULL,
  `obscom` VARCHAR(50) NULL,
  `datcom` DATE,
  `numfou` INT,
  PRIMARY KEY (`numcom`),
  KEY `numfou` (`numfou`),
  FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`)
);

INSERT INTO `entcom` (`numcom`, `obscom`, `datcom`, `numfou`) VALUES

    (70010, '','2007-02-10', 00120),
    (70011, 'Commande urgente', '2007-03-01', 00540),
    (70020, '', '2007-04-25', 09180),
    (70025, 'Commande urgente', '2007-04-30', 09150),
    (70210, 'Commande cadencée', '2007-05-05', 00120),
    (70300, '', '2007-06-06', 09120),
    (70250, 'Commande cadencée', '2007-10-02', 08700),
    (70620, '', '2007-10-02', 00540),
    (70625, '', '2007-10-09', 00120),
    (70629, '', '2007-10-12', 09180);

  CREATE TABLE `ligcom` (
  `numcom` INT not null,
  `codart` CHAR(4) NOT NULL,
  `numlig` INT,
  `qtecde` INT,
  `priuni` DECIMAL(5,0),
  `qteliv` INT,
  `derliv` DATE,
  PRIMARY KEY (`numcom`,`codart`),
  FOREIGN KEY (`numcom`) REFERENCES `entcom` (`numcom`),
  FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`)
);

INSERT INTO `ligcom` (`numcom`, `codart`, `numlig`, `qtecde`, `priuni`, `qteliv`, `derliv`) VALUES

    (70010, 'I100', 01, 3000, 470, 3000, '2007-03-15'),
    (70010, 'I105', 02, 2000, 485, 2000, '2007-07-05'),
    (70010, 'I108', 03, 1000, 680, 1000, '2007-08-20'),
    (70010, 'D035', 04, 200, 40, 250, '2007-02-20'),
    (70010, 'P220', 05, 6000, 3500, 6000, '2007-03-31'),
    (70010, 'P240', 06, 6000, 2000, 2000, '2007-03-31'),
    (70011, 'I105', 01, 1000, 600, 1000, '2007-05-16'),
    (70020, 'B001', 01, 200, 140, 0, '2007-12-31'),
    (70020, 'B002', 02, 200, 140, 0, '2007-12-31'),
    (70025, 'I100', 01, 1000, 590, 1000, '2007-05-15'),
    (70025, 'I105', 02, 500, 590, 500, '2007-05-15'),
    (70210, 'I100', 02, 500, 590, 500, '2007-05-15'),
    (70010, 'P230', 02, 10000, 3500, 10000, '2007-08-31'),
    (70300, 'I110', 01, 50, 790, 50, '2007-10-31'),
    (70250, 'P230', 01, 15000, 4900, 12000, '2007-12-15'),
    (70250, 'P220', 02, 10000, 3350, 10000, '2007-11-10'),
    (70620, 'I105', 01, 200, 600, 200, '2007-11-01'),
    (70625, 'I100', 01, 1000, 470, 1000, '2007-10-15'),
    (70625, 'P220', 02, 10000, 3500, 10000, '2007-10-31'),
    (70629, 'B001', 01, 200, 140, 0, '2007-12-31'),
    (70629, 'B002', 02, 200, 140, 0, '2007-12-31');


CREATE TABLE `vente` (
  `codart` CHAR(4) NOT NULL,
  `numfou` INT NOT NULL,
  `delliv` INT,
  `qte1` INT,
  `prix1` DECIMAL(5,0),
  `qte2` INT,
  `prix2` DECIMAL(5,0),
  `qte3` INT,
  `prix3` DECIMAL(5,0),
  PRIMARY KEY (`codart`,`numfou`),
  KEY `numfou` (`numfou`),
  FOREIGN KEY (`numfou`) REFERENCES `fournis` (`numfou`),
  FOREIGN KEY (`codart`) REFERENCES `produit` (`codart`)
);

INSERT INTO `vente` (`codart`, `numfou`, `delliv`, `qte1`, `prix1`, `qte2`, `prix2`, `qte3`, `prix3`) VALUES

    ('I100', 00120, 90, 0, 700, 50, 600, 120, 500),
    ('I100', 00540, 70, 0, 710, 60, 630, 100, 600),
    ('I100', 09120, 60, 0, 800, 70, 600, 90, 500),
    ('I100', 09150, 90, 0, 650, 90, 600, 200, 590),
    ('I100', 09180, 30, 0, 720, 50, 670, 100, 490),
    ('I105', 00120, 90, 10, 705, 50, 630, 120, 500),
    ('I105', 00540, 70, 0, 810, 60, 645, 100, 600),
    ('I105', 09120, 60, 0, 920, 70, 800, 90, 700),
    ('I105', 09150, 90, 0, 685, 90, 600, 200, 590),
    ('I105', 08700, 30, 0, 720, 50, 670, 100, 510),
    ('I108', 00120, 90, 5, 795, 30, 720, 100, 680),
    ('I108', 09120, 60, 0, 920, 70, 820, 100, 780),
    ('I110', 09180, 90, 0, 900, 70, 870, 90, 835),
    ('I110', 09120, 60, 0, 950, 70, 850, 90, 790),
    ('D035', 00120, 0, 0, 40, 0, 0, 0, 0),
    ('D035', 09120, 5, 0, 40, 100, 30, 5, 0),
    ('P220', 00120, 15, 0, 3700, 100, 3500, 0, 0),
    ('P230', 00120, 30, 0, 5200, 100, 5000, 0, 0),
    ('P240', 00120, 15, 0, 2200, 100, 2000, 0, 0),
    ('P250', 00120, 30, 0, 1500, 100, 1400, 500, 1200),
    ('P250', 09120, 30, 0, 1500, 100, 1400, 500, 1200),
    ('P220', 08700, 20, 50, 3500, 100, 3350, 0, 0),
    ('P230', 08700, 60, 0, 5000, 50, 4900, 0, 0),
    ('R080', 09120, 10, 0, 120, 100, 100, 0, 0),
    ('R132', 09120, 5, 0, 275, 0, 0, 0, 0),
    ('B001', 08700, 15, 0, 150, 50, 145, 100, 140),
    ('B002', 08700, 15, 0, 210, 50, 200, 100, 185);