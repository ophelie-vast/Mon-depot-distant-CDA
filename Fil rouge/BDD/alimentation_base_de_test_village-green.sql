/* Données pour la table FOURNISSEURS */

INSERT INTO `fournisseur` (`nom_fournisseur`, 
`prenom_fournisseur`,
`adresse_fournisseur`,
`ville_fournisseur`,
`cp_fournisseur`,
`telephone_fournisseur`) VALUES

    ('DUPONT', 'Jean-Claude', '2 rue des Pigeons', 'Cabanac', '65350', '0601020304'),
    ('HUBAUT', 'Victor', '50 rue Jean Valjean', 'Amiens', '80000', '0610203040'),
    ('JACKSON', 'Mickael', '10 rue du Paradis', 'Gajac', '33430', '0753415896'),
    ('HENRY', 'Ludovic', '20 rue des pleures', 'Galez', '65330', '0690807020'),
    ('ETIENNE', 'Océane', '560 rue Tiens le Bien', 'Zincourt', '88330', '0365987411');


/* Données pour la table COMMERCIAL */

INSERT INTO `commercial` (`nom_commercial`,
`prenom_commercial`) VALUES

    ('FAUCHOIS', 'Pascale'),
    ('SPICHER', 'Dominique'),
    ('IDEAL', 'Louise'),
    ('DUMEGE', 'Micheline'),
    ('LELOIRE', 'Lucie'),
    ('VAST', 'Ophélie'),
    ('PETIT', 'Ludovic'),
    ('GRAND', 'Pascale'),
    ('FRERE', 'Paul'),
    ('MOYEN', 'Lisa');


/* Données pour la table Sous_catégorie */

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES

    (1, 'ACCESSOIRES'),
    (2, 'INSTRUMENTS À VENT'),
    (3, 'INSTRUMENTS À CORDES'),
    (4, 'INSTRUMENTS À PERCUSSIONS');


/* Données pour la table CLIENT */

INSERT INTO `client` (`nom_client`,
`prenom_client`,
`adresse_client`,
`cp_client`,
`ville_client`,
`telephone_client`,
`type_client`,
`id_commercial`) VALUES 

    ('NICLO', 'Vincent', '10 avenue de l Opera', '75000', 'Paris', '0758246589', 'pro', 1),
    ('ROCH', 'Voisine', '65 avenue d Hélène', '14000', 'Caen', '0632541289', 'pro', 2),
    ('GALL', 'France', '100 rue du piano', '09300', 'Nalzen', '0625356478', 'pro', 3),
    ('GREGORIO', 'MICKAEL', '45 avenue des imitations', '50400', 'Yquelon', '0698521478', 'pro', 4),
    ('VITAA', 'Slimane', '20 rue du Palais', '62770', 'Wamin', '0789652145', 'pro', 5),
    ('DUPUIS', 'Jean', '56 rue des Parapluies', '33420', 'Cabara', '0652417898', 'par', 6),
    ('DUBOIS', 'Elsa', '98 rue des danseurs', '82160', 'Parisot', '0785256498', 'par', 7),
    ('LEFEVRE', 'Julien', '413 rue des chiens', '72500', 'Vaas', '0789652487', 'par', 8),
    ('GOVIN', 'Marine', '63 avenue de l Hippodrome', '60120', 'Paillart', '0632541789', 'par', 9),
    ('VILTARD', 'Maureen', '99 rue de la femme', '34800', 'Octon', '0725418963', 'par', 10);


/* Données pour la table Catégorie */    

INSERT INTO `sous_categorie` (`id_sous_categorie`, `nom_categorie`, `id_categorie`) VALUES

    (1, 'Microphone', 1),
    (2, 'Différents câbles', 1),
    (3, 'Sono', 1),
    (4, 'Cases', 1),
    (5, 'Saxophones', 2),
    (6, 'Trompettes', 2),
    (7, 'Flûtes', 2),
    (8, 'Guitares', 3),
    (9, 'Pianos', 3),
    (10, 'Harpes', 3),
    (11, 'Batteries', 4),
    (12, 'Cymbales', 4),
    (13, 'Tambours', 4);

/* Données pour la table PRODUIT */

INSERT INTO `produit` (`nom_produit`,
`prix_achat`,
`photo`,
`stock_produit`,
`libelle_long`,
`id_sous_categorie`,
`id_fournisseur`) VALUES

    ('Tambour', 249.99, 'tambour.png', 5, 'Les tambours basses brésiliens vous garantissent une parfaite base rythmiques, 
    que ce soit lors d un concert de votre groupe de samba ou lors d un défilé de carnaval! Le son profond émis grâce à la 
    frappe des baguettes sur la peau et la résonance de la peau, du tambour et de la colonne d air, forme la tonalité de base de
     la samba et enchantera à tout point votre public.',13 , 4 ),
    
    ('Cymbales', 149.99, 'cymbales.png', 3, 'Affichant un excellent rapport qualité-prix, ces cymbales sont très appréciées. 
    La cymbale crash présentée ici est fabriquée à partir d un alliage de métal spécial et recouverte d un revêtement en laiton. 
    Elle possède un diamètre de 18.', 12, 4),

    ('Batterie', 449.99, 'batterie.png', 1, 'Un ensemble avec tout ce dont vous avez besoin pour jouer de la batterie! 
    Le set complet de timbales, de qualité de construction robuste avec des pieds stables pour un excellent accord et avec une 
    sonorité exceptionnelle. Un ensemble de matériel avec les bras de tom faciles à ajuster pour une adaptation optimale à 
    toutes les tailles de corps. Le hi-hat et la pédale de grosse caisse sont livrés avec un palan de chaîne. 
    Tous les tambours sont équipés de memo locks, ce qui garantit un montage facile et qui évite le réajustement lors d un 
    remontage. Les caisses sont faites de peaux de haute qualité et pré-assemblées, à part quelques poignées.', 11, 4),

    ('Harpe', 299.99, 'harpe.jpg', 4, 'Pour tous les amis de la musique celtique, la harpe celtique à 29 cordes offre une 
    sonorité de bien-être pour tous.', 10, 3),

    ('Piano', 799.49, 'piano.png', 1, 'Manque d espace ou de budget ? Ne cherchez plus, ce modèle est le piano qu il vous faut ! 
    Facile à prendre en main, vous serez surpris par les qualités qui font de lui un grand piano, à petit prix !', 9, 3),

    ('Guitare', 159.49, 'guitare.png', 6, 'A ce prix-là, plus aucune excuse pour ne pas s essayer à la guitare. Choisissez votre 
    modèle, classique, folk ou ukulélé, et jouez !', 8, 3),

    ('Flûte', 99.99, 'flute.jpg', 10, 'Cette flûte offre une tête et un corps en maillechort finition argent pour une sonorité 
    riche et chaude. Les mécanismes sont d une fiabilité éprouvée et la flûte d une justesse impeccable. Le confort de jeu n est 
    pas en reste puisque les formes des clés et leurs placements ont été pensés de façon ergonomique pour un positionnement 
    naturel de la main.', 7, 2),

    ('Trompette', 119.99, 'trompette.jpg', 9, 'Particulièrement adaptée aux débutants par sa prise en main facile, 
    les qualités mécaniques de cette trompette permettent une progression aisée et rapide. 
    La trompette sera l instrument idéal pour accompagner vos premiers pas dans l apprentissage de la musique.', 6, 2),

    ('Saxophone', 179.99, 'saxo.png', 8, 'Ce Saxo est basé sur le tube original d un saxophone alto avec un mécanisme 
    complètement redessiné et un positionnement des trous de tonalité pour les plus petits qui, auparavant, devaient 
    "attendre d être plus grands" avant d apprendre à jouer du saxophone.', 5, 2),

    ('Cases', 49.49, 'cases.png', 15, 'Avec cette case, vous obtiendrez un flight case vous permettant de ranger et de 
    transporter jusqu à huit jeux de lumière en toute sécurité. Ce flight case dispose d un extérieur robuste et d un intérieur 
    qui est divisé en neuf compartiments individuels qui sont tous revêtus de mousse, à l exception celui du milieu. 
    Dans le compartiment central, vous pouvez stocker vos accessoires. Notez enfin que ce flight case dispose de quatre poignées 
    encastrées et de fermetures papillons.', 4, 1),

    ('Sono', 1099.99, 'sono.jpg', 2, 'Sono portable haut de gamme sur batterie, puissance 700W, excellente qualit de son, 
    idéale pour diffuser de la musique, équipé de 2 micros sans fil UHF, parfaite pour vos prestations de qualité !', 3, 1),

    ('Câbles', 9.99, 'cables.png', 100, 'Ces câbles sont épais, souples et robustes. Ils sont fabriqués avec des composants de 
    haute qualité permettant de restituer votre signal avec la plus grande fidélité. Grâce à leur blindage hélicoïdal 
    ultra-résistant, ces câbles sont conçus pour éviter toute torsion, entortillement ni la moindre déformation, tout en vous 
    garantissant un son sans aucun bruit parasite. Sur scène comme en studio, branchez votre équipement et jouez en toute 
    confiance.', 2, 1),

    ('Micro', 29.99, 'micro.png', 50, 'Ce micro s adapte parfaitement aux contraintes de la voix chantée et permet de nombreuses 
    utilisations en home studio ou en live.', 1, 1);


/* Données pour la table COMMANDE */

    INSERT INTO `commande` (`date_commande`,
    `detail_commande`,
    `prix_commande`,
    `date_reglement`,
    `reduction_commande`,
    `adresse_livraison`,
    `ville_livraison`,
    `cp_livraison`,
    `adresse_facturation`,
    `ville_facturation`,
    `cp_facturation`,
    `id_client`) VALUES

        ("2021-11-10", 'saxo + cable', 189.98, "2021-11-10", 0, '56 rue des Parapluies', 'Cabara', '33420', '56 rue des Parapluies', 'Cabara', '33420', 3),
        ("2021-11-11", 'guitare', 159.49, "2021-11-11",0 , '99 rue de la femme', 'Octon', '34800', '99 rue de la femme', 'Octon', '34800', 6);


/* Données pour la table LIVRAISON */

    INSERT INTO `livraison` (`bon_livraison`,
    `date_livraison`,
    `date_expedition`,
    `id_commande`) VALUES

       ('bon de livraison', "2021-11-21", "2021-11-18", 1),
       ('bon de livraison', "2021-11-22", "2021-11-17", 2); 

    
/* Données pour la table contient */

INSERT INTO `contient` (`id_produit`,
`id_livraison`,
`quantite_produit`) VALUES

    (1,1,1),
    (2,2,1);


/* Données pour la table SeComposeDe */

INSERT INTO `secomposede` (`id_produit`,
`id_commande`,
`quantite_commandé`) VALUES

    (1,1,1),
    (2,2,1);
