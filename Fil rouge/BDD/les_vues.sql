/* Gérer les vues

Créez une vue correspondant à la jointure Produits - Fournisseurs */

	DROP VIEW IF EXISTS v_ProduitsFournisseurs;
    
    CREATE VIEW v_ProduitsFournisseurs
	AS
	SELECT nom_produit, nom_fournisseur
	FROM produit
    JOIN fournisseur ON id_produit = fournisseur.id_fournisseur;
	
	SELECT * FROM v_ProduitsFournisseurs;


/* Créez une vue correspondant à la jointure Produits - Catégorie/Sous catégorie */

    DROP VIEW IF EXISTS v_ProduitsCatégories;

    CREATE VIEW v_ProduitsCatégories
	AS
	SELECT nom_produit, nom_categorie, nom_sous_categorie
	FROM produit
    JOIN sous_categorie ON produit.id_produit = sous_categorie.id_sous_categorie
	JOIN categorie ON sous_categorie.id_sous_categorie = categorie.id_categorie;

	SELECT * FROM v_ProduitsCatégories;