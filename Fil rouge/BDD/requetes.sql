/* Chiffre d'affaires mois par mois pour une année sélectionnée */

CREATE VIEW ChiffeAffaire_mois
AS
SELECT month(date_commande), SUM(prix_achat*quantite_commandé) AS 'Chiffre d affaire par mois'
FROM produit
NATURAL JOIN commande
NATURAL JOIN secomposede
GROUP BY MONTH(date_commande);


/* Chiffre d'affaires généré pour un fournisseur */

CREATE VIEW ChiffreAffaire_fournisseur
AS
SELECT nom_fournisseur, SUM(prix_achat*quantite_commandé) AS 'Chiffre d affaire par fournisseur'
FROM fournisseur
NATURAL JOIN produit
NATURAL JOIN commande
NATURAL JOIN secomposede
GROUP BY id_fournisseur;


/* TOP 10 des produits les plus commandés pour une année sélectionnée (référence et nom du produit, quantité commandée, fournisseur) */

CREATE VIEW Top10_Produits
AS
SELECT id_produit, nom_produit, SUM(quantite_commandé), nom_fournisseur
FROM produit
NATURAL JOIN secomposede
NATURAL JOIN fournisseur
GROUP BY id_produit
ORDER BY SUM(quantite_commandé) DESC;


/* TOP 10 des produits les plus rémunérateurs pour une année sélectionnée (référence et nom du produit, marge, fournisseur) */

CREATE VIEW Top10_rému
AS
SELECT id_produit, nom_produit, prix_achat AS Marge, nom_fournisseur
FROM produit
NATURAL JOIN fournisseur
ORDER BY Marge DESC;

/* Top 10 des clients en nombre de commandes ou chiffre d'affaires */

CREATE VIEW Top10_client
AS
SELECT nom_client, COUNT(id_commande) AS 'Nombre commandes'
FROM client
NATURAL JOIN commande
GROUP BY nom_client
ORDER BY COUNT(id_commande) DESC;

CREATE VIEW TOP10_ChiffreAffaire
AS
SELECT nom_client, (quantite_commandé*prix_achat) AS 'Chiifre d affaire'
FROM client
NATURAL JOIN produit
NATURAL JOIN secomposede
GROUP BY nom_client
ORDER BY 'Chiffre d affaire' DESC;


/* Répartition du chiffre d'affaires par type de client */

CREATE VIEW ChiffreAffaire_TypeClient
AS
SELECT type_client, (quantite_commandé*prix_achat) AS 'Chiffre d affaire'
FROM client
NATURAL JOIN secomposede
NATURAL JOIN produit
GROUP BY type_client
ORDER BY 'Chiffre d affaire' DESC;


/* Nombre de commandes en cours de livraison. */

CREATE VIEW CommandesEnCours
AS
SELECT id_commande, nom_client, date_livraison, nom_produit
FROM commande
NATURAL JOIN client
NATURAL JOIN secomposede
NATURAL JOIN produit
NATURAL JOIN livraison
WHERE date_livraison="0000-00-00" AND secomposede.id_produit=produit.id_produit
GROUP BY id_commande
ORDER BY id_commande ASC;