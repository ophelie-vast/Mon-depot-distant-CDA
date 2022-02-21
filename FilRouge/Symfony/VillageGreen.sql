-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : database:3306
-- Généré le : lun. 21 fév. 2022 à 17:01
-- Version du serveur : 10.3.32-MariaDB-1:10.3.32+maria~focal
-- Version de PHP : 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `VillageGreen`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`, `photo`) VALUES
(1, 'Guitares', 'guitare.png'),
(2, 'Claviers', 'piano.png'),
(3, 'Instruments à vent', 'saxo.png'),
(4, 'Batteries', 'batterie.png'),
(5, 'Sonos', 'sono.png'),
(6, 'Accessoires', 'accessoires.png');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `sous_categorie_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_achat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptif` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `sous_categorie_id`, `nom`, `prix_achat`, `photo`, `stock`, `descriptif`) VALUES
(1, 1, 'Kawai GL 10 WH/P Grand Piano', '11 290', 'piano_queue_1.jpg', '3', '∙ Mécanique Millennium III avec pièces en ABS Styran. \r\n∙ Pédale sostenuto\r\n∙ Têtes des marteaux avec feutre. Couvre clavier à fermeture lente. \r\n∙ Longueur: 153 cm. \r\n∙ Poids: 282 kg. \r\n∙ Finition: Blanc poli. \r\n∙ Banc inclus.'),
(2, 1, 'Kawai GL 10 E/P Grand Piano', '10 890', 'piano_queue_2.jpg', '1', '∙ Mécanique Millennium III avec pièces en ABS Styran; Pédale sostenuto.\r\n∙ Têtes des marteaux avec feutre. \r\n∙ Couvre clavier à fermeture lente. \r\n∙ Longueur: 153 cm. \r\n∙ Poids: 282 kg. \r\n∙ Finition: Noir poli. \r\n∙ Banc incl.'),
(3, 1, 'Yamaha GB1 K Walnut Polished', '11 290', 'piano_queue_3.jpg', '2', '∙ 88 touches.\r\n∙ 3 pédales.\r\n∙ Longueur: 151 cm.\r\n∙ Largeur: 146 cm.\r\n∙ Hauteur: 99 cm.\r\n∙ Poids: 261 kg.\r\n∙ Finition: Noyer poli.\r\n∙ Livré avec un banc.'),
(4, 1, 'Yamaha C 1 X PE Grand Piano', '22 990', 'piano_queue_4.jpg', '1', '∙ Noir poli.\r\n∙ Avec banc de piano.\r\n∙ Y compris la livraison dans tout le pays via la livraison de piano et un service de conversation dans toute l\'Allemagne.\r\n∙ Chaque centimètre de ce modèle compact de la série CX reflète la passion de Yamaha pour le piano à queue parfait.\r\n∙ Longueur : 161 cm.\r\n∙ Largeur : 149cm.\r\n∙ Hauteur : 101 cm.\r\n∙ Poids : 290 kg.'),
(5, 1, 'Yamaha GB1 K PWH', '11 850', 'piano_queue_5.jpg', '3', '∙ 88 clés.\r\n∙ 3 pédales : pédale centrale : pédale de sustain à un seul ton.\r\n∙ Avec banc de piano.\r\n∙ Y compris la livraison dans tout le pays via la livraison de piano et un service de conversation dans toute l\'Allemagne.\r\n∙ Longueur : 151 cm.\r\n∙ Largeur : 146cm.\r\n∙ Hauteur : 99cm.\r\n∙ Poids : 261 kg.\r\n∙ Couleur : Blanc poli.'),
(6, 1, 'Yamaha GC 2 PWH Stutzflügel', '23 390', 'piano_queue_6.jpg', '1', '∙ 88 touches.\r\n∙ 3 pédales (pédale centrale pour maintien de la tonalité).\r\n∙ Longueur: 173 cm.\r\n∙ Largeur: 149 cm.\r\n∙ Hauteur: 101 cm.\r\n∙ Poids: 305 kg.\r\n∙ Finition: Blanc haute brillance.\r\n∙ Livré avec un banc.'),
(7, 4, 'Harley Benton Fusion-III HSS Roasted DP', '348', 'electrique1.jpeg', '3', '∙ Série Pro.\r\n∙ Corps ergonomique en nyatoh.\r\n∙ Manche vissé en érable canadien torréfié.\r\n∙ Profil du manche: Modern C.\r\n∙ Touche en érable canadien torréfié.\r\n∙ Repères \"points\" ivoroïde.\r\n∙ Diapason: 648 mm (25,512\").\r\n∙ Rayon de la touche: 305 mm (12,008\").\r\n∙ Largeur au sillet: 42 mm (1,654\").\r\n∙ Sillet Graph Tech Tusq.\r\n∙ 24 frettes BlackSmith Medium Jumbo en acier inoxydable.\r\n∙ 1 micro double bobinage Roswell S74-N AlNiCo-5 (manche).\r\n∙ 1 micro double bobinage Roswell S74-M AlNiCo-5 (milieu).\r\n∙ 1 micro double bobinage Roswell HAF-B AlNiCo-5 (chevalet).\r\n∙ 1 réglage de volume.\r\n∙ 1 réglage de tonalité Push/Pull (Coil Split).\r\n∙ Sélecteur 5 positions.\r\n∙ Vibrato Wilkinson WV550IIK.\r\n∙ Mécaniques bloquantes échelonnées WSC moulées sous pression.\r\n∙ Accastillage chromé.\r\n∙ Cordes .010 - .046.\r\n∙ Couleur: Dark Pink Gloss.'),
(8, 4, 'Harley Benton Custom Line Manhattan-Standard', '268', 'electrique2.jpeg', '1', '∙ Série Vintage.\r\n∙ Hollow Body.\r\n∙ Table bombée en acajou.\r\n∙ Fond et éclisses en acajou.\r\n∙ Profondeur du corps: 60 mm.\r\n∙ Filet couleur crème.\r\n∙ Manche en acajou.\r\n∙ Diapason: 648 mm.\r\n∙ Touche en amarante.\r\n∙ 22 frettes.\r\n∙ Repères \"points\" en nacre.\r\n∙ Largeur au sillet: 43 mm.\r\n∙ Chevalet en ovangkol.\r\n∙ 1 micro double bobinage miniature Custom avec aimant en céramique.\r\n∙ 1 réglage de volume.\r\n∙ 1 réglage de tonalité.\r\n∙ Mécaniques Deluxe.\r\n∙ Cordes D\'Addario EXL110.\r\n∙ Longueur: 1100 mm.\r\n∙ Courbe inférieure: 450 mm.\r\n∙ Courbe supérieure: 320 mm.\r\n∙ Couleur: Marron satiné.'),
(9, 5, 'Startone CG-851 1/8 Pink', '37', 'classique1.jpeg', '2', '∙ Taille: 1/8.\r\n∙ Corps en tilleul.\r\n∙ Manche en nato.\r\n∙ Touche en érable.\r\n∙ Diapason: 465 mm.\r\n∙ Largeur au sillet: 39 mm.\r\n∙ Filet de corps noir.\r\n∙ Longueur totale: 762 mm.\r\n∙ Cordes en nylon.\r\n∙ Couleur: Rose satin.'),
(10, 5, 'Hellweg Micki', '333', 'classique2.jpeg', '6', '∙ Taille: 1/8.\r\n∙ Pour enfants de 4 à 6 ans.\r\n∙ Table en épicéa massif.\r\n∙ Fond et éclisses en acajou.\r\n∙ Diapason: 400 mm.\r\n∙ Largeur du manche: 48/54 mm.\r\n∙ Longueur du corps: 370 mm.\r\n∙ Largeur la plus grande: 290 mm.\r\n∙ Profondeur du corps: 80 mm.\r\n∙ Mécaniques à rouleaux.\r\n∙ Cordes John Hope N°097.\r\n∙ Finition: Haute brillance.\r\n∙ Couleur: Naturel.'),
(11, 7, 'The box pro Achat 204', '109', 'enceinte1.jpeg', '8', '∙ Puissance : 80 Watt RMS - 320 Watt crête.\r\n∙ Impédance : 4 Ohm.\r\n∙ SPL Max : 112 dB.\r\n∙ Réponse en fréquence : 90 Hz - 20 kHz.\r\n∙ Dispersion : 90° x 90°.\r\n∙ Connectique : 2x Speaker Twist NL4 et borniers.\r\n∙ Pas de vis 3/8\" en dessous.\r\n∙ Dimensions : 172 x 142 x 360 mm.\r\n∙ Poids : 3 kg.\r\n∙ Finition: peinture texturée noire.\r\n∙ Conçue en Allemagne.'),
(12, 16, 'Shure Beta 58 A', '158', 'micro1.jpeg', '10', '∙ Diagramme polaire supercardioïde.\r\n∙ Portée de transmission optimisée pour une excellente qualité vocale lors d\'une utilisation professionnelle en direct.\r\n∙ Offre le plus haut niveau de sécurité de rétroaction avec un gain maximal et une suppression maximale du bruit de fond.\r\n∙ Un absorbeur de vibrations à suspension pneumatique protège contre les bruits d\'impact et de préhension.\r\n∙ Gamme de fréquence : 50 - 16 000 Hz.\r\n∙ Niveau de pression acoustique maximal : 140,5 dB.\r\n∙ Impédance de sortie : 290 Ohm.\r\n∙ Sensibilité : -51,5 dBV/Pa (2,66 mV).\r\n∙ Dimensions (L x Ø) : 160 x 50 mm.\r\n∙ Poids : 278 grammes.\r\n∙ Inclus : pince, filetage de réduction 3/8\" et sac.'),
(13, 9, 'Hohner CX 12 C- Major', '158', 'harmonicas1.jpeg', '9', '∙ Peigne en matière plastique.\r\n∙ Coque ergonomique en matière plastique.\r\n∙ 48 lames en laiton 1,05 mm.\r\n∙Couleur: Noir.'),
(14, 10, 'Moeck 3110 Flauto Rondo Sopranino', '128', 'flute1.jpeg', '7', '∙ Corps en érable.\r\n∙ Doigté allemand.\r\n∙ Simple trou.\r\n∙ La = 442 Hz.\r\n∙ 2 pièces.\r\n∙Trousse en coton avec bords en cuir incl.'),
(15, 8, 'Thomann TAS-180 Black Alto Saxophone', '349', 'saxo1.jpeg', '3', '∙ Corps, bocal et mécanique en laiton.\r\n∙ Clé de Fa# aigu.\r\n∙ Clé de Fa avant.\r\n∙ Vis de réglage séparées pour Ré, Mi, Fa, La, Si.\r\n∙ Repose-pouce réglable en matière plastique.\r\n∙ Clés de Sol# et Fa# massives.\r\n∙ Pavillon amovible.\r\n∙ Finition du corps: Noir.\r\n∙ Finition des clés: Vernis doré.\r\n∙ Tampons en cuir noir avec résonateurs en métal.\r\n∙ Incrustation des clés noire.\r\n∙ Etui souple avec sangles sac à dos incl.'),
(16, 8, 'Yamaha YAS-280 Alto Sax', '990', 'saxo2.jpeg', '1', '∙ Modèle étudiant.\r\n∙ Bague de serrage du bocal améliorée.\r\n∙ Bascule Si-Do# grave améliorée.\r\n∙ Repose-pouce réglable.\r\n∙ Clé de Fa# aigu.\r\n∙ Clé de Fa avant.\r\n∙ Corps en laiton.\r\n∙ Finition corps et clétage: Vernis doré.\r\n∙ Etui souple avec sangles sac à dos, bec Yamaha 4C, sangle et graisse pour liège incl.'),
(17, 12, 'Millenium Youngster Drum Set Green', '99', 'acoustique1.jpeg', '5', '∙ Batterie complète pour enfant.\r\n∙ Idéale pour les enfants à partir de 3 ans.\r\n∙ Grosse caisse 16\"x12\".\r\n∙ Tom 08\"x05\".\r\n∙ Caisse claire 10\"x04\".\r\n∙ Fûts en bois dur.\r\n∙ Accastillage noir.\r\n∙ Finition: Rhodoïd.\r\n∙ Couleur: Green Sparkle.\r\n∙ Pied de caisse claire.\r\n∙ Pédale de charleston.\r\n∙ Pédale de grosse caisse.\r\n∙ Siège.\r\n∙ Paire de baguettes.\r\n∙ Cymbales LowNoiz à faible volume sonore.'),
(18, 12, 'Millenium MX422 Standard Set RL', '359', 'acoustique2.jpeg', '3', '∙ Version Standard.\r\n∙ Grosse caisse 22\"x16\" (avec attache pour supports de toms).\r\n∙ Tom 10\"x08\".\r\n∙ Tom 12\"x09\".\r\n∙ Stand tom 16\"x16\".\r\n∙ Caisse claire 14\"x5,5\".\r\n∙ Fûts 9 plis en peuplier/bouleau.\r\n∙ Cercles caisse claire/toms en métal 1,5 mm.\r\n∙ Cercles de la grosse caisse en bois de couleur identique aux fûts.\r\n∙ Finition: Rhodoïd.\r\n∙ Couleur: Red Lining.'),
(19, 11, 'Millenium MPS-850 E-Drum Set', '598', 'electronique1.jpeg', '2', '∙ 550 sons.\r\n∙ 30 kits prédéfinis.\r\n∙ 20 kits utilisateur.\r\n∙ 100 morceaux.\r\n∙ 2 morceaux utilisateur.\r\n∙ Enregistrement rapide.\r\n∙ Métronome.\r\n∙ EQ par kit.\r\n∙ Pitch.\r\n∙ Réverbération.\r\n∙ Compresseur.\r\n∙ 6 faders pour ajuster le volume individuel des pads, du métronome et des chansons.\r\n∙ 2 sorties Main sur Jack 6,3 mm.\r\n∙ Sortie casque sur Jack stéréo 6,3 mm.\r\n∙ Entrée ligne sur mini Jack stéréo 3,5 mm.\r\n∙ 2 entrées Trigger sur Jack stéréo 6,3 mm (déjà occupées par le deuxième pad Crash et le quatrième pad de tom).\r\n∙ USB MIDI.\r\n∙ Mémoire USB.\r\n∙ MIDI In & Out.\r\n∙ Import de sample WAV.'),
(20, 11, 'Millenium MPS-750X E-Drum Mesh Set', '498', 'electronique2.jpeg', '1', '∙ 20 presets.\r\n∙ 20 kits utilisateur.\r\n∙ 697 sons.\r\n∙ 55 morceaux.\r\n∙ EQ 4 bandes.\r\n∙ Faders pour contrôle du volume des pads, effets et EQ.\r\n∙ Sortie ligne L/R.\r\n∙ Sortie casque.\r\n∙ Entrée ligne.\r\n∙ Port USB.\r\n∙ 2 entrées trigger supplémentaires.\r\n∙ Bluetooth.\r\n∙ Bloc d\'alimentation, câblage et paire de baguettes incl.'),
(21, 13, 'Beyerdynamic DT-1990 Pro 250 Ohm', '429', 'casque1.jpeg', '14', '∙ Pour mixage et mastering.\r\n∙ Technologie Tesla 2.0.\r\n∙ Dynamique.\r\n∙ Ouvert.\r\n∙ Circum-aural.\r\n∙ Impédance: 250 Ohm.\r\n∙ SPL: 102 dB (1 mW/500 Hz).\r\n∙ Bande passante: 5 - 40000 Hz.\r\n∙ Puissance admissible: 200 mW.\r\n∙ Câble droit de 3 m.\r\n∙ Câble torsadé de 5 m (tendu).\r\n∙ Fiche mini XLR 3 broches.\r\n∙ Poids sans câble: 370 g.\r\n∙ Adaptateur 6,3 mm, coussinets en velours et étui en cuir artificiel incl.'),
(22, 15, 'K&M 14055 Drum Throne Nick', '122', 'banc1.jpeg', '30', '∙ Modèle \"Nick\".\r\n∙ Trépied pliable double embase.\r\n∙ Assise amovible type selle.\r\n∙ Assise rembourrée avec revêtement en simili-cuir.\r\n∙ Grosse vis de serrage et goupille de verrouillage pour une utilisation simple et sécurisée.\r\n∙ Hauteur réglable par paliers de 480 à 740mm.\r\n∙ Poids: 6 kg.\r\n∙ Couleur: Noir.'),
(23, 14, 'K&M 210/9 Black', '49', 'pied1.jpeg', '32', '∙ Hauteur réglable de 900 à 1600 mm.\r\n∙ Perche extensible de 460 à 770 mm.\r\n∙ Socle en fonte.\r\n∙ Poids: 3,2 kg.\r\n∙ Couleur: Noir.'),
(24, 2, 'Kawai K-200 WH/P Piano', '5 790', 'droit1.jpeg', '1', '∙ Toucher Millennium III avec pièces ABS de carbone de stabilité et de force inégalée.\r\n∙ Noyau du marteau en acajou.\r\n∙ Pupitre: 100 cm.\r\n∙ Couvercle du clavier.\r\n∙ 88 touches.\r\n∙ 3 pédales.\r\n∙ Dimensions (LxHxP): 114 x 149 x 57 cm.\r\n∙ Poids: 200 kg.\r\n∙ Finition: blanc brillant.'),
(25, 3, 'Thomann DP-95 WH', '579', 'numerique1.jpeg', '2', '∙ Avec accompagnement automatique.\r\n∙ 88 touches lestées.\r\n∙ Mécanique à marteaux.\r\n∙ 500 sons.\r\n∙ 200 styles.\r\n∙ 60 morceaux internes.\r\n∙ 2 morceaux de démonstration.\r\n∙ Ecran LCD.\r\n∙ Polyphonie 128 voix.\r\n∙ Harmony.\r\n∙ Réverbération.\r\n∙ Séquenceur (3 morceaux utilisateur).\r\n∙ Sync Start.\r\n∙ Sync Stop.\r\n∙ Intro/Ending.\r\n∙ Fill-In A.\r\n∙ Fill-In B.\r\n∙ Bouton One Touch Setting.\r\n∙ Mode accord.\r\n∙ Modes Dual et Split.\r\n∙ Métronome.\r\n∙ Fonction Transpose.\r\n∙ 3 pédales.\r\n∙ 2 sorties casque.\r\n∙ USB MIDI.\r\n∙ MIDI In/Out.\r\n∙ Entrée Aux.\r\n∙ Sortie Aux.\r\n∙ Système de haut-parleurs: 2 x 25 Watt + 2 x 20 Watt.\r\n∙ Couvre clavier rétractable.\r\n∙ Dimensions: 1380 x 514 x 906 mm.\r\n∙ Poids: 53 kg.\r\n∙ Couleur: Blanc.'),
(26, 6, 'Presonus StudioLive AR16c', '599', 'mix1.jpeg', '4', '∙ Interface audio 18 x 4 USB 2.0 (USB C).\r\n∙ Résolution interface : 24 bits / 96 kHz.\r\n∙ Enregistrement multipiste sur Mac et PC.\r\n∙ Lecteur/enregistreur de carte SD avec convertisseurs 24 bits/44,1 kHz (enregistrement : WAV, lecture : WAV et MP3).\r\n∙ Récepteur bluetooth 5.0.\r\n∙ 12 entrées micro (XLR) avec préamplis micro de classe A.\r\n∙ Alimentation fantôme 48 V commutable pour l\'ensemble des canaux.\r\n∙ 16 entrées ligne symétriques (4 canaux mono, 4 canaux stéréo).\r\n∙ 2 entrées niveau instrument (canaux 1 et 2).\r\n∙ Canaux 1 à 8 avec égaliseur paramétrique (médiums) et filtre passe-haut.\r\n∙ Super Channel (canaux 17/18) avec diverses options d\'entrée : Entrée Cinch (G/D), prise mini-jack 3,5 mm stéréo.\r\n∙ Lecture commutable des sources Bluetooth, de la carte SD ou du flux de lecture USB de l\'ordinateur.\r\n∙ Sortie principale L/R (XLR) avec indicateur de niveau à LED.\r\n∙ Sortie casque stéréo.\r\n∙ Effets numériques (16 présélections.'),
(27, 2, 'Yamaha b2 PE', '4 990', 'droit2.jpeg', '4', 'Grâce à ses dimensions plus grandes et à son design sophistiqué, le nouveau piano b2 est également plus riche en volume, proportionnellement à sa taille. Les roulettes facilitent la mobilité et le boîtier élégant avec une finition traditionnelle dorlote vos yeux. Pour les pianistes un peu plus avancés, le piano b2 est une combinaison parfaite de bonnes propriétés de jeu et sonores à un bon prix.\r\n\r\n∙ Table d\'harmonie solide en épicéa.\r\n∙ Largeur : 149 cm.\r\n∙ Hauteur : 113 cm.\r\n∙ Profondeur : 53 cm.\r\n∙ Poids : 194 kg.\r\n∙ Noir poli.\r\n∙ Incl. banc de piano, lampe de piano et livraison nationale.'),
(28, 2, 'Yamaha b2 PWH', '5 090', 'droit3.jpeg', '5', 'Banc et lampe incl.\r\n88 touches\r\n∙ Table d\'harmonie en épicéa massif.\r\n∙ 3 pédales.\r\n∙ Largeur: 149 cm.\r\n∙ Hauteur: 113 cm.\r\n∙ Profondeur: 53 cm.\r\n∙ Poids: 194 kg.\r\n∙ Finition: Blanc haute brillance.'),
(29, 2, 'Yamaha U1 Q PWH', '9 790', 'droit4.jpeg', '8', '∙ 88 touches\r\n∙ 3 pédales.\r\n∙  Hauteur: 121 cm.\r\n∙ Largeur: 153 cm.\r\n∙ Profondeur: 61 cm.\r\n∙ Poids: 228 kg.\r\n∙ Finition: Blanc poli haute brillance.\r\n∙ Banc et lampe incl.'),
(30, 2, 'Yamaha b1 PWH', '3 890', 'droit5.jpeg', '7', '∙ Banc et lampe incl.\r\n∙ 88 touches.\r\n∙ 3 pédales.\r\n∙ Largeur: 148 cm.\r\n∙ Hauteur: 109 cm.\r\n∙ Profondeur: 54 cm.\r\n∙ Poids: 174 kg.\r\n∙ Finition: Blanc poli.'),
(31, 3, 'Thomann DP-28 Plus WH', '395', 'numerique2.jpeg', '9', '∙ 88 touches lestées.\r\n∙ Mécanique à marteaux.\r\n∙ 25 sons.\r\n∙ Métronome.\r\n∙ 50 rythmes.\r\n∙ Polyphonie 192 voix.\r\n∙ Modes: Layer, Split, Duo, Twinova.\r\n∙ Master EQ, Reverb, Chorus, Harmony.\r\n∙ Bibliothèque musicale avec 100 presets de chansons.\r\n∙ Fonction de transposition.\r\n∙ Bluetooth MIDI pour l\'application Pianotool (iOS et Android).\r\n∙ Système de haut-parleurs: 2 x 20 Watt.\r\n∙ 2 sorties casque.\r\n∙ Sortie MIDI.\r\n∙ USB MIDI.\r\n∙ Connexion pour pédale de sustain.\r\n∙ Sortie ligne.\r\n∙ Entrée Aux.\r\n∙ Dimensions (LxPxH): 1365 x 366 x 134 mm.\r\n∙ Poids: 12,5 kg.\r\n∙ Couleur: Blanc.\r\n∙ Bloc d\'alimentation, pédale de sustain et pupitre incl.'),
(32, 3, 'Kawai Novus NV-10S', '9 449', 'numerique3.jpeg', '6', '∙ 88 touches lestées en bois.\r\n∙ Clavier hybride Millennium III.\r\n∙ 90 sons.\r\n∙ Mode 4 mains.\r\n∙ Polyphonie max. 256 voix.\r\n∙ Profondeur de résonance.\r\n∙ Ambiance.\r\n∙ Réverbération.\r\n∙ Effets.\r\n∙ Effet Key-Off.\r\n∙ Effet Damper résonance (pédale Forte).\r\n∙ Simulation du bruit.\r\n∙ 39 morceaux de démonstration.\r\n∙ 29 morceaux Piano Music.\r\n∙ 176 morceaux Concert Magic.\r\n∙ Bluetooth audio.\r\n∙ Contrôle pour l\'entré ligne.\r\n∙ Sorties ligne L/MONO, R sur mini Jack stéréo.\r\n∙ 2 sortie casque: 1 x mini Jack stéréo, 1 x Jack stéréo 6,3 mm.\r\n∙ Entrée/sortie MIDI.\r\n∙ 3 pédales: Sustain (fonction demi-pédale), Soft, Sostenuto.\r\n∙ Dimensions: 1480 x 645 x 995 mm.\r\n∙ Poids: 127 kg.\r\n∙ Finition: Noir poli.'),
(33, 3, 'Thomann DP-275 GP WHP', '2 298', 'numerique4.jpeg', '5', '∙ 88 touches pondérées avec action marteau.\r\n∙ 1200 sons incl. 13 kits de batterie.\r\n∙ 270 styles.\r\n∙ 90 chansons internes.\r\n∙ 3 chansons de démonstration.\r\n∙ Affichage LC.\r\n∙ Polyphonie 256 voix.\r\n∙ Début de la synchronisation.\r\n∙ Arrêt de synchronisation.\r\n∙ Intro/Fin.\r\n∙ Réglage à une touche.\r\n∙ Chord Mode.\r\n∙Dual/Split Mode.\r\n∙ Métronome.\r\n∙ Fonction de transposition.\r\n∙ Réglage de hauteur.\r\n∙ 3 pédales.\r\n∙ Housse de clavier.\r\n∙ Bluetooth.\r\n∙ 2 sorties casque.\r\n∙ Prise micro.\r\n∙ Audio et Midi USB.\r\n∙ Midi In/Out/Thru.\r\n∙ Aux-In.\r\n∙ Aux-Out.\r\n∙ Haut-parleur : 40 W x 2, 20 W x 2.\r\n∙ 2 amplificateurs de 100 W.\r\n∙ Dimensions :1476 x 947 x 932 mm.\r\n∙ Poids : 101 kg.\r\n∙ Couleur : Blanc poli.'),
(34, 3, 'Thomann DP-28 Plus', '385', 'numerique5.jpeg', '10', '∙ 88 touches lestées.\r\n∙ Mécanique à marteaux.\r\n∙ 25 sons.\r\n∙ Métronome.\r\n∙ 50 rythmes.\r\n∙ Polyphonie 192 voix.\r\n∙ Modes: Layer, Split, Duo, Twinova.\r\n∙ Master EQ, Reverb, Chorus, Harmony.\r\n∙ Bibliothèque musicale avec 100 presets de chansons.\r\n∙ Fonction de transposition.\r\n∙ Bluetooth MIDI pour l\'application Pianotool (iOS et Android).\r\n∙ Système de haut-parleurs: 2 x 20 Watt.\r\n∙ 2 sorties casque.\r\n∙ Sortie MIDI.\r\n∙ USB MIDI.\r\n∙ Connexion pour pédale de sustain.\r\n∙ Sortie ligne.\r\n∙ Entrée Aux.\r\n∙ Dimensions (LxPxH): 1365 x 366 x 134 mm.\r\n∙ Poids: 12,5 kg.\r\n∙ Couleur: Noir.\r\n∙ Bloc d\'alimentation, pédale de sustain et pupitre incl.'),
(35, 17, 'Strasser Professional G/C/F/Bb', '3 899', 'accordeon1.jpeg', '7', '∙ 4 rangées.\r\n∙ 3 chœurs.\r\n∙ Accordage: Sol/Do/Fa/Sib.\r\n∙ 46 boutons de mélodie.\r\n∙ 15 boutons de basse: 8 basses, 7 accompagnements, 1 bouton doublé.\r\n∙ Mécanique SKL brevetée pour main droite.\r\n∙ Bretelles rembourrées.\r\n∙ Dragonne.\r\n∙ Protection pour soufflet.\r\n∙ Etui avec doublure en peluche.\r\n∙ Dimensions: 36 x 20 cm.\r\n∙ Poids: 7,1 kg.'),
(36, 17, 'Roland FR-1X BK', '1 549', 'accordeon2.jpeg', '9', '∙ 26 touches piano sensibles à la vélocité.\r\n∙ 72 boutons de basse sensibles à la vélocité.\r\n∙ Polyphonie 128 voix.\r\n∙ 4 chœurs de mélodies.\r\n∙ 5 chœurs de basses.\r\n∙ 7 sets d\'accordéon avec 8 registres de mélodies, 4 sonorités d\'orchestre, 3 registres de basse, 3 registres de basse-orchestre, 5 registres d\'accords-orchestre.\r\n∙ 8 mémoires de registre.\r\n∙ Réplique de bruits d\'accordéon comme soufflet et anches.\r\n∙ Ecran LED.\r\n∙ Sortie casque.\r\n∙ Système de haut-parleurs: 2 x 7 Watt.\r\n∙ Dimensions: 405 x 365 x 195 mm.\r\n∙ Poids: 6,5 kg.\r\n∙Couleur: Noir.'),
(37, 17, 'Startone Piano Accordion 120 Black MKII', '749', 'accordeon3.jpeg', '7', '∙ Startone Piano Accordion MKII.\r\n∙ 120 basses.\r\n∙ 41 touches de piano.\r\n∙ 3 jeux d\'anches aiguës, 7 registres aigus + registre principal à main. \r\n∙ Couleur : noir. \r\n∙ Dimensions (L x P x H) : 42 x 19 x 51 cm.\r\n∙ Poids : 10,3 kg , incl. \r\n∙ Sangles et sac de transport avec sangles de sac à dos.'),
(38, 17, 'Hohner XS Accordion Button blue', '622', 'accordeon4.jpeg', '8', '∙ Pour enfants et adultes.\r\n∙ 60% plus léger qu\'un accordéon traditionnel.\r\n∙ Clavier avec angle ergonomique.\r\n∙ 21 touches de mélodie.\r\n∙ 1 chœur de mélodie.\r\n∙ 15 boutons de basse.\r\n∙ Tessiture du clavier: Si - Sol2.\r\n∙ 3 rangées de basse.\r\n∙ Tessiture des basses: Fa - La.\r\n∙ Boîtier en plastique robuste.\r\n∙ Système de bretelles Click\'n\'Play.\r\n∙ Courroie main gauche réglable.\r\n∙ Poids: 2,9 kg.\r\n∙ Couleur: Bleu/orange.\r\n∙ Housse et bretelles pour enfants incl.'),
(39, 17, 'Weltmeister Romance 703 B-Handle White', '3 444', 'accordeon5.jpeg', '1', '∙ 70/96/III/5/3 accordéon bouton poignée B chromatique.\r\n∙ 96 Basses.\r\n∙ 70 boutons aigus disposés en poignée B.\r\n∙ 5 registres aigus.\r\n∙ 3 registres de basse.\r\n∙ Aigus à 3 voix.\r\n∙ Basse 4 voix.\r\n∙ Hauteur : 412 mm.\r\n∙ Poids : 9,5 kg.\r\n∙ Couleur : Blanc.\r\n∙ Étui et sangles inclus.'),
(40, 18, 'Startone PTR-20 Bb- Trumpet Orange', '99', 'trompette1.jpeg', '21', '∙ perce Ø : 11,60 mm.\r\n∙ Pavillon Ø : 129 mm.\r\n∙ 3 pistons Périnet.\r\n∙ Chambres de pistons en métal.\r\n∙ Clé d\'eau sur la coulisse d\'accord.\r\n∙ Crochet sur la branche d\'embouchure.\r\n∙ Poids: env. 550 g.\r\n∙ Couleur : orange.\r\n∙ Housse et embouchure en ABS fournies.'),
(41, 18, 'Yamaha YTR-8335RG 04 Trumpet', '2 619', 'trompette2.jpeg', '1', '∙ Série Xeno.\r\n∙ Perce: 0,459\".\r\n∙ Pavillon fait d\'un pièce, travaillé au marteau.\r\n∙ Nouvelle forme de pavillon, diamètre: 123 mm.\r\n∙ Emplacement des pistons plus léger.\r\n∙ 2 positions de glissement d\'arrêt sur le troisième piston.\r\n∙ Vernis transparent.\r\n∙ Embouchure 16C4 et étui solide TRC-800E inclus.'),
(42, 18, 'Schagerl Salzburg L Bb-Trumpet', '2 199', 'trompette3.jpeg', '2', '∙ 3 palettes.\r\n∙ Pavillon en laiton doré.\r\n∙ Branche d\'embouchure en laiton doré.\r\n∙ Coulisse d\'accord en laiton doré.\r\n∙ Sans support de lyre.\r\n∙ Finition: Vernis clair.\r\n∙ Sacoche Schagerl incl.'),
(43, 18, 'Schilke P 7-4 A/Bb- Piccolo', '4 599', 'trompette4.jpeg', '2', '∙ 4 pistons.\r\n∙ Perce M: 11,42 mm.\r\n∙ Pavillon en cuivre.\r\n∙ Diamètre du pavillon: 101,60 mm.\r\n∙ Corps en laiton.\r\n∙ Branches d\'embouchure Sib & La incl.\r\n∙ Finition: Argenté.\r\n∙ Livré avec embouchure et étui.'),
(44, 18, 'Startone PCR-20 Bb- Cornet Blue', '129', 'trompette5.jpeg', '12', '∙ En plastique ABS.\r\n∙ Perce: 11,60 mm.\r\n∙ Diamètre du pavillon: 122 mm.\r\n∙ Pistons Périnet classiques.\r\n∙ Chambres de pistons en métal.\r\n∙ Clé d\'eau sur la coulisse d\'accord.\r\n∙ Crochet sur la branche d\'embouchure.\r\n∙ Poids: env. 535 g.\r\n∙ Couleur: Bleu foncé.\r\n∙ Housse et embouchure en ABS incl.'),
(45, 8, 'Yanagisawa B-WO1 Baritone Sax', '5 999', 'saxo4.jpeg', '3', '∙ Modèle Professional.\r\n∙ Corps en laiton.\r\n∙ Clétage en laiton.\r\n∙ Clé de Fa# aigu.\r\n∙ Clé de La grave.\r\n∙ Bascule Do#/Sib.\r\n∙ Clé de Do double pointe.\r\n∙ Pavillon et boucle vissés.\r\n∙ Pavillon gravé à la main.\r\n∙ Finition: Vernis doré.\r\n∙ Etui et bec incl.'),
(46, 8, 'Thomann Piccolino Kids Saxophone in Bb', '239', 'saxo3.jpeg', '5', '∙ Pour enfants à partir de 5 ans.\r\n∙ Tonalité: Sib.\r\n∙ Hauteur avec bocal: 480 mm.\r\n∙ Diamètre du pavillon: 95 mm.\r\n∙ Bec et étui souple incl.'),
(47, 8, 'Thomann Antique Soprano Sax', '429', 'saxo5.jpeg', '6', '∙ Clé de Fa# aigu.\r\n∙ Bascule Do#/Si.\r\n∙ Repose-pouce réglable.\r\n∙ Corps et clétage en laiton.\r\n∙ 2 bocaux: Droit et courbe.\r\n∙ Finition: Antique.\r\n∙ Bec et étui incl.'),
(48, 9, 'Hohner Super 64 X in C', '495', 'harmonicas2.jpeg', '6', '∙ Tonalité: Do majeur.\r\n∙ Tessiture: 4 octaves (Do3 - Ré7).\r\n∙ Peigne noir en ABS.\r\n∙ 64 lames de 1,2 mm en laiton.\r\n∙ Lames encastrées dans le peigne.\r\n∙ Trous ronds.\r\n∙ Système Vario Spring pour un ajustage aisé de la tirette à l\'aide d\'un tournevis fourni (sert également d\'établi pour la maintenance de l\'instrument).\r\n∙ Etui en nylon servant également d\'établi pour la maintenance de l\'instrument incl.'),
(49, 9, 'Hohner Penta Harp A-Minor', '49', 'harmonicas3.jpeg', '10', '∙ Série Progressive.\r\n∙ Tonalité: La mineur pentatonique.\r\n∙ Tessiture: 3 octaves.\r\n∙ Basé sur le célèbre Hohner Special 20\r\n∙ 20 lames en laiton de 0,9 mm.\r\n∙ Peigne en plastique.\r\n∙ Couvercles en acier inoxydable.\r\n∙ Longueur: 102 mm.\r\n∙ Fabriqué en Allemagne.\r\n'),
(50, 9, 'Hohner Unsere Lieblinge 32 G', '59', 'harmonicas4.jpeg', '13', '∙ Peigne en bois.\r\n∙ Deux tons simultanés accordés d\'une octave.\r\n∙ Lames en laiton 0,9mm.\r\n∙ Idéal pour la musique folklorique allemande.'),
(51, 9, 'C.A. Seydel Söhne Sailor Steel D', '88', 'harmonicas5.jpeg', '15', '∙ Tonalité: Ré.\r\n∙ 24 double trous.\r\n∙ 48 lames de 1 mm et rivets en acier inoxydable.\r\n∙ Peigne divisé en plastique noir.\r\n∙ Capots en acier inoxydable.\r\n∙ Poids: 134 g.\r\n∙ Dimensions: 182 x 30 x 24 mm.'),
(52, 9, 'Hohner Golden Melody 40 C', '75', 'harmonicas6.jpeg', '16', '∙ 40 Lames en laiton 0,9 mm.\r\n∙ Peigne en matière plastique.\r\n∙ Longueur: env. 16,3 cm.'),
(53, 10, 'Moeck 1023 Flauto 1 Plus Soprano', '36', 'bec2.jpeg', '21', '∙ Doigté baroque.\r\n∙ Double trou.\r\n∙ Partie supérieure en matière plastique bleue.\r\n∙ Partie inférieure en érable.\r\n∙ Etui en lin, graisse et écouvillon incl.\r\n'),
(54, 10, 'Yamaha YRN-21 Sopranino Recorder', '15', 'bec3.jpeg', '18', '∙ Doigté allemand.\r\n∙ En plastique.\r\n∙ Couleur: Marron.\r\n∙ Trousse incl.'),
(55, 10, 'Mollenhauer 5024 Denner Sopranino', '315', 'bec4.jpeg', '3', '∙ Matière : Grenadille.\r\n∙ Baroque fingering.\r\n∙ Double trou.\r\n∙ 2 pièces.\r\n∙ Son brillant et baroque.\r\n∙ Soigneusement réglé.\r\n∙ Conception galbée.\r\n∙ Peut aussi être joué avec de gros doigts.\r\n∙ Comprend un sac en coton.'),
(56, 10, 'Xaphoon Standard C', '75', 'bec5.jpeg', '5', 'Le XAPHOON standard se distingue avant tout par sa précision. Il a été développé pour les écoles, les groupes, les ensembles et juste pour tous ceux qui veulent que chaque instrument sonne exactement de la même manière. Le XAPHOON CLASSIQUE est un Xaphoon standardisé. Il est produit en Indiana / USA, selon un processus de fabrication de haute précision, il est fabriqué à partir du même matériau que les becs de clarinette et de saxophone. C\'est un instrument idéal pour débuter et en plus il est moins cher que les autres Xaphoons.\r\n\r\nNous le recommandons particulièrement pour l\'interaction avec des instruments à cordes et à clavier, flûte en do ou en fa. Les Xaphoons C sont un peu plus courts que les B, ce qui est un avantage pour les petites mains. La force de soufflage est déjà suffisante pour les enfants de 2-3 ans, cependant, principalement en raison de la taille des doigts, notre expérience montre que le XAPHOON standard peut être bien enseigné aux enfants à partir de 6 ans. Sur cet instrument C-/F-/B majeur et A-/D-/G- mineur sont les plus faciles à jouer.\r\n\r\nLe son est plus direct et un peu plus fort que celui des MAUI XAPHOONS.\r\n\r\n∙ Modèle standard.\r\n∙ Saxo de poche.\r\n∙ Matériel: Plastique.\r\n∙ Lowest note C\'.\r\n∙ Gamme de 2 octaves.\r\n∙ un \'= 440 Hz.\r\n∙ Pour jouer avec une anche de saxophone ténor.\r\n∙ Incl. anche, capuchon de protection et ligature.'),
(57, 10, 'Mollenhauer 2446KC Canta Comfort Tenor', '777', 'bec6.jpeg', '2', '∙ En poirier clair.\r\n∙ Doigté baroque.\r\n∙ 2 clés supplémentaires réduisants l\'écart entre les doigts.\r\n∙ Clé de Sol: L\'annulaire gauche n\'a plus besoin d\'être écarté.\r\n∙ Clé de Fa: L\'index droit s\'étend moins, ce qui permet de décontracter la main\r\n∙ Double clé Do/Do#.\r\n∙ Clés pour les notes graves faciles à actionner afin d\'éviter tout effort du petit doigt.\r\n∙ Modèle coudé: L\'instrument est plus près du corps et soulage ainsi les bras.\r\n∙ Repose-pouce, sangle, étui, tableau de doigtés et accessoires d\'entretien incl.'),
(58, 11, 'Millenium MPS-450 E-Drum Set', '409', 'electronique3.jpeg', '4', '∙ 408 sons\r\n∙ 30 kits\r\n∙ 10 kits utilisateur\r\n∙ 80 morceaux\r\n∙ 5 morceaux utilisateur\r\n∙ Métronome\r\n∙ 2 sorties sur Jack 6,3 mm\r\n∙ Sortie casque sur mini Jack stéréo 3,5 mm\r\n∙ Entrée ligne sur mini Jack stéréo 3,5 mm\r\n∙ 2 entrées Trigger sur Jack stéréo 6,3 mm\r\n∙ USB MIDI\r\n∙ MIDI Out'),
(59, 11, 'Millenium MPS-850 E-Drum Set Bundle', '666', 'electronique4.jpeg', '3', '∙ 550 sons.\r\n∙ 30 kits prédéfinis.\r\n∙ 20 kits utilisateur.\r\n∙ 100 morceaux.\r\n∙ 2 morceaux utilisateur.\r\n∙ Enregistrement rapide.\r\n∙ Métronome.\r\n∙ EQ par kit.\r\n∙ Pitch.\r\n∙ Réverbération.\r\n∙ Compresseur.\r\n∙ 6 faders pour ajuster le volume individuel des pads, du métronome et des chansons.\r\n∙ 2 sorties Main sur Jack 6,3 mm.\r\n∙ Sortie casque sur Jack stéréo 6,3 mm.\r\n∙ Entrée ligne sur mini Jack stéréo 3,5 mm.\r\n∙ 2 entrées Trigger sur Jack stéréo 6,3 mm (déjà occupées par le deuxième pad Crash et le quatrième pad de tom)\r\n∙ USB MIDI.\r\n∙ Mémoire USB.\r\n∙ MIDI In & Out.\r\n∙ Import de sample WAV.'),
(60, 11, 'Alesis Strike Pro Special Edition', '2 399', 'electronique5.jpeg', '2', '∙ Pads composés de plusieurs plis de bois.\r\n∙ Peaux maillées améliorées pour un rebond plus réaliste.\r\n∙ Accastillage noir avec vis de serrage dorées.\r\n∙ Pads de cymbales optique martelé.\r\n∙ Rack, pied de caisse claire, bloc d\'alimentation, câblage et paire de baguettes incl.\r\n∙ Surface au sol requise: env. 170 x 120 cm.'),
(61, 12, 'Sonor SSD 13\"x5,75\" Benny Greb 2.0', '758', 'accoustique3.jpeg', '4', '∙ Taille: 13\"x5,75\".\r\n∙ Modèle signature Benny Greb.\r\n∙ Fût 9 plis en hêtre.\r\n∙ Epaisseur du fût: 5 mm.\r\n∙ Accastillage chromé.\r\n∙ Coquilles Vintage.\r\n∙ Déclencheur Dual Glide.\r\n∙ Cercles Power Hoop de 2,3 mm.\r\n∙ Timbre 18 brins en acier.\r\n∙ 2 sourdines intérieures (laine/feutre).\r\n∙ Finition: Placage de bouleau scandinave satiné avec insert central en placage de bubinga.'),
(62, 12, 'Millenium Focus Junior Drum Set Black', '169', 'accoustique4.jpeg', '5', '∙ Série Focus.\r\n∙ Convient aux enfants de 4 à 7 ans.\r\n∙ Grosse caisse 16\"x10\".\r\n∙ Tom 08\"x05\".\r\n∙ Tom 10\"x06\".\r\n∙ Stand tom 13\"x11\".\r\n∙ Caisse claire en bois 12\"x05\".\r\n∙ Finition: Rhodoïd.\r\n∙ Couleur: Noir.\r\n∙ Paire de baguettes incl.\r\n∙ Coussin atténuateur d\'harmoniques pour grosse caisse incl.'),
(63, 12, 'Yamaha Stage Custom Studio -HA', '749', 'accoustique5.jpeg', '4', '∙ Série Stage Custom.\r\n∙ Grosse caisse 20\"x17\".\r\n∙ Tom 10\"x07\".\r\n∙ Tom 12\"x08\".\r\n∙ Stand tom 14\"x13\".\r\n∙ Caisse claire 14\"x5,5\".\r\n∙ Fûts 6 plis en bouleau.\r\n∙ Accastillage chromé.\r\n∙ Système de suspension YESS.\r\n∙ Coquilles Absolute.\r\n∙ Cercles en acier.\r\n∙ Support double de toms TH945B incl.\r\n∙ Finition: Vernis haute brillance.\r\n∙ Couleur: Honey Amber.'),
(64, 12, 'Varus Morpheus Estepario Shell Set', '2 799', 'accoustique6.jpeg', '1', '∙ Coque en bois d\'érable/hêtre.\r\n∙ Coques laquées mates.\r\n∙ Détails dorés et créoles noires.\r\n∙ Couleur : Noir métallisé satiné avec rayures carbone dorées.\r\n∙ Fabriqué à la main en Espagne à partir de bois triés sur le volet en collaboration avec le célèbre YouTuber El Estepario.\r\n'),
(65, 19, 'The t.amp Quadro 500 DSP', '489', 'ampli1.jpeg', '5', '∙ Classe D.\r\n∙ Puissance : 4x 500 Watt @ 4 Ohm, 4x 250 Watt @ 8 Ohm.\r\n∙ DSP intégré.\r\n∙ EQ paramétrique complet 8 bandes par canal.\r\n∙ Filtres HPF & LPF, compresseur et noise-gate par canal.\r\n∙ Delays réglables pour chaque canal.\r\n∙ Toutes les entrées peuvent être distribuées librement sur toutes les sorties.\r\n∙ Contrôles confortables via logiciel sur PC/ordinateur portable possible.\r\n∙ Tous les réglages peuvent également être effectués directement sur l\'appareil.\r\n∙ 4 entrées XLR.\r\n∙ 4 sorties Speaker Twist.\r\n∙ Format rack 19\" - 1 U.\r\n∙ Dimensions : 483 x 460 x 44 mm.\r\n∙ Poids : 8,0 kg.'),
(66, 19, 'The t.amp E-800', '175', 'ampli2.jpeg', '14', '∙ Puissance : 2x 500 Watt sous 4 Ohm, 2x 350 Watt sous 8 Ohm (@ 1 kHz, THD <= 0,1%).\r\n∙ Réponse en fréquence: 20 Hz - 20 kHz.\r\n∙ Entrées XLR / jack 6,3 mm TRS.\r\n∙ Sorties Speaker Twist et borniers.\r\n∙ Circuits de protection : DC.\r\n∙ Fusible de court-circuit.\r\n∙ Protection contre la surchauffe.\r\n∙ Limiteur.\r\n∙ Circuit de veille.\r\n∙ Tension de réseau : 230 V, 50 Hz.\r\n∙ Dimensions (L x P x H) : 482 x 375 x 88 mm.\r\n∙ Format rack 19\" - 2U.\r\n∙ Poids : 12,8 kg.'),
(67, 19, 'The t.amp Proline 3000', '599', 'ampli3.jpeg', '3', '∙ 2x 1500W sous 4 Ohm, 2x 1100W sous 8 Ohm, 2x 1800W sous 2 Ohm.\r\n∙ Limiteur.\r\n∙ Circuits de protection.\r\n∙ Vitesse du ventilateur variable.\r\n∙ Interrupteur de masse.\r\n∙ Dimensions: 482 x 480 x 132 mm, format rack 19\" - 3U.\r\n∙ Poids: 37 kg.'),
(68, 6, 'Behringer PMP 500', '269', 'mix2.jpeg', '4', '∙ 12x canaux (6x mono + 4 stéréo).\r\n∙ Puissance: 2x 250W sous 4 Ohm.\r\n∙ Processeur d\'effets Klark Teknik.\r\n∙ Tap délai et FBQ (élimination de Larsen automatique).\r\n∙ 6x pré-amplis micros avec alimentation +48V.\r\n∙ EQ 3 bandes, filtre coupe bas et LED de crête sur toutes les entrées mono.\r\n∙ EQ stéréo master 7 bandes.\r\n∙ Entrée auxiliaire ajustable.\r\n∙ Alimentation interne.\r\n∙ Dimensions: 122 x 390 x 425 mm.\r\n∙ Poids: 6,3 kg.'),
(69, 6, 'The t.mix xmix 1202 FXMP USB', '165', 'mix3.jpeg', '8', '∙ Avec processeur d\'effets intégré et lecteur numérique USB / SD.\r\n∙ 6 entrées micro XLR / entrées ligne.\r\n∙ Alimentation fantôme 48V.\r\n∙ Égaliseur 3 bandes et panoramique.\r\n∙ 2 entrées stéréo.\r\n∙ Sortie master via 2x XLR et 2x jack 6,3 mm.\r\n∙ Sortie Control Room supplémentaire.\r\n∙ Entrée et sortie enregistrement 2 Track via RCA (2 entrées / sorties).\r\n∙ Sortie casque contrôlable séparément.\r\n∙ Avec Bluetooth et connexion USB.\r\n∙ 1 sortie auxiliaire.\r\n∙ Connexion pour pédale footswitch (pour enclencher / désenclencher les effets).\r\n∙ Dimensions (LxHxP): 345 x 100 x 340 mm.\r\n∙ Poids: 4,7 kg.'),
(70, 6, 'Behringer X Air XR18', '589', 'mix4.jpeg', '12', '∙ Commande à distance avec routeur intégré via Wi-Fi, Ethernet et interface audio USB multicanal.\r\n∙ 16 entrées micro/ligne XLR/jack combo.\r\n∙ 2 entrées ligne via jack 6,3 mm.\r\n∙ Sorties principales XLR.\r\n∙ 6 départs Aux / Monitor (Envois auxiliaires / moniteurs).\r\n∙ 4 processeurs d\'effets intégrés.\r\n∙ Analyseur à 100 bande.\r\n∙ Sortie casque stéréo.\r\n∙ Connexion Ultranet Monitor.\r\n∙ Entrée/sortie MIDI.\r\n∙ Applications iOS, Android et autres applications logicielles disponibles gratuitement.\r\n∙ Hauteur: 3U.\r\n∙ Profondeur de montage : 114 mm.\r\n∙ Dimensions avec panneaux latéraux et supports avant (L x H x P) : 333 x 140 x 150 mm.\r\n∙ Dimensions sans panneaux latéraux (L x H x P) : 311 x 132 x 150 mm.\r\n∙ Poids 3,2 kg.\r\n∙ Kit de montage en rack inclus.'),
(71, 6, 'DAP-Audio Compact 8.1', '189', 'mix5.jpeg', '15', '∙ 8 entrées micro/ligne combinées (XLR/RCA).\r\n∙ Master EQ avec Mid Sweep.\r\n∙ Alimentation fantôme.\r\n∙ Filtre passe-haut sélectionnable.\r\n∙ Sortie maître XLR (symétrique).\r\n∙ Connecteur casque : jack 6,3 mm.\r\n∙ Format: 19\"/ 1U.\r\n∙ Dimensions : 481 x 175 x 44 mm.\r\n∙ Poids : 2,2 kg.'),
(72, 7, 'The box PA 252 ECO MKII', '239', 'enceinte2.jpeg', '12', '∙ Puissance: 450W RMS, 1800W crête.\r\n∙ Impédance: 4 Ohm.\r\n∙ Réponse en fréquence: 45 Hz - 15 kHz.\r\n∙ SPL max: 121 dB.\r\n∙ Dispersion: 90º x 40º.\r\n∙ Entrée / sortie combo Speaker Twist / jack 6,3 mm.\r\n∙ Dimensions: 495 x 420 x 1030 mm.\r\n∙ Poids: 35,5 kg.'),
(73, 7, 'Bose L1 Compact', '833', 'enceinte3.jpeg', '12', '∙ Technologie de dispersion de haut-parleur pour une distribution spatiale uniforme sur toute la scène et partout dans l\'auditorium.\r\n∙ 2 canaux ToneMatch avec pré-réglages fixes pour microphone et guitare acoustique (commutable).\r\n∙ Caisson de basses intégré dans la base\r\n2 options de placement: faible hauteur de la colonne pour les petites pièces ou hauteur complète de la colonne pour les grandes salles.\r\n∙ Solution idéale pour la musique live, DJ mobile, présentations et conférences, présentations d\'affaires et autres événements.\r\n∙ Poids assemblé (sans sac) : 13,30 kg.'),
(74, 7, 'Thomann Band Bundle M', '1 333', 'enceinte4.jpeg', '2', '∙ Amplificateur d\'alimentation à découpage.\r\n∙ 4x 490 W/ 8 ohms.\r\n∙ 4x 810 W/4 ohms.\r\n∙ 4x 930 W/2 ohms.\r\n∙ 2x 1600 W/ 8 Ohm (mode pont).\r\n∙ 2x 1800 W/ 4 Ohm (mode pont).\r\n∙ Entrées et sorties XLR.\r\n∙ Sorties Speaker Twist.\r\n∙ Circuits de protection : limiteur audio, température et court-circuit.\r\n∙ Dimensions : 488 x 370 x 97 mm.\r\n∙ Taille : 19\" / 2U.\r\n∙ Poids : 10,7 kg.'),
(75, 7, 'LD Systems Maui 28 G2 Bundle', '1 077', 'enceinte5.jpeg', '4', '∙ Système d\'amplification compact plug\'n play.\r\n∙ Apparence discrète pour applications discrètes.\r\n∙ Caisson de basses avec 2x haut-parleurs 8\" Bass Reflex et 2 satellites avec 16x haut-parleurs 3\" et 2x tweeters 1\".\r\n∙ Amplificateur numérique intégré de classe D avec 1000 Watt de puissance RMS ou 4000 Watt crête.\r\n∙ Réponse en fréquence: 45 - 20 000 Hz.\r\n∙ Niveau maximum: 126 dB.\r\n∙ Entrées micro combo XLR / TRS.\r\n∙ Entrée ligne LR combo XLR / jack et entrées RCA.\r\n∙ Entrée niveau instrument haute impédance.\r\n∙ Entrée lecteur MP3 ou Bluetooth (mini-jack stéréo 3,5 mm).\r\n∙ Sorties Sub et System: XLR.\r\n∙ Niveau principal et niveau des basses réglables.\r\n∙ Circuits de protection: protection de CC, de court-circuit, limiteur multibande et surchauffe.\r\n∙ Mono / stéréo commutable.\r\n∙ Dimensions (LxHxP): caisson: 370 x 484 x 480 mm / satellite: 96 x 780/795 x 104 mm.\r\n∙ Poids caisson de basses: 20,2 kg / satellite: 5,6 / 5,4 kg.\r\n∙ Caisson en contreplaqué de bouleau.\r\n∙ Boîtier satellite en aluminium avec connecteurs multibroches pour une installation simple sans support d\'enceinte et sans câble.\r\n∙ Couleur: noir.'),
(76, 16, 'The t.bone HeadmiKe - D Shure', '59', 'micro2.jpeg', '12', '∙ Micro-casque à condensateur.\r\n∙ Léger.\r\n∙ 2 tours d\'oreille.\r\n∙ Positionnement à gauche ou à droite.\r\n∙ Directivité: cardioïde.\r\n∙ Réponse en fréquence: 50 - 20.000 Hz.\r\n∙ Sensibilité: 4,4 mV / Pa (-47,2 dB re 1 V / Pa).\r\n∙ SPL max: 115 dB.\r\n∙ Impédance: 750 Ohm.\r\n∙ Prise Shure TQG.\r\n∙ Longueur du câble: 120 cm.\r\n∙ Couleur: beige clair.\r\n∙ Attache câble inclus.'),
(77, 16, 'The t.bone RB 500', '99', 'micro3.jpeg', '12', '∙ Directivité: figure en 8.\r\n∙ Réponse en fréquence: 30 Hz - 18 kHz.\r\n∙ Sensibilité: -60 dB = 1 mV / Pa (0 dB= 1 V / Pa).\r\n∙ SPL max: 148 dB.\r\n∙ Ruban aluminium 2\" 2 microns.\r\n∙ Pince micro et câble intégré.'),
(78, 16, 'Shure SM57 LC', '98', 'micro4.jpeg', '14', '∙ Directivité: cardioïde.\r\n∙ Réponse en fréquence: 40 Hz - 15 kHz.\r\n∙ SPL max: 94 SPL.\r\n∙ Sensibilité: -56,0 dBV / Pa (1,6 mV).\r\n∙ Impédance: 310 Ohm.\r\n∙ Dimensions: 157 x 32 mm.\r\n∙ Poids: 284 g.\r\n∙ Pince micro avec adaptateur de pas de vis 3/8\" et trousse de transport inclus.\r\n∙ Idéal pour les caisses claires et autres percussions, guitare électrique et certainement beaucoup plus encore!'),
(79, 16, 'Shure SM 86', '138', 'micro5.jpeg', '13', 'Le Shure SM86 est un microphone à condensateur avec diagramme polaire cardioïde pour une utilisation professionnelle en direct. Le microphone à condensateur robuste peut résister à toutes les situations stressantes sur scène, tout en offrant une qualité studio. La réponse en fréquence adaptée du SM86 fournit une reproduction précise de la voix, et le diagramme polaire cardioïde, pointant directement vers la source du signal, assure un signal presque sans bruit. L\'amortisseur à trois points intégré réduit les bruits de manipulation, tandis que le pare-brise à deux couches minimise les bruits de vent et de claquement. Le SM86 est un excellent choix pour le monitoring de scène et intra-auriculaire.\r\n\r\n∙ Optimisé pour le chant.\r\n∙ Capsule à condensateur de qualité studio.\r\n∙ Réponse en fréquence adaptée pour une reproduction précise des voix.\r\n∙ La conception extrêmement robuste résiste aux charges extrêmes.\r\n∙ Le motif polaire cardioïde réduit les bruits de fond indésirables.\r\n∙ Excellent pour une utilisation avec le monitoring de scène et intra-auriculaire.\r\n∙ L\'amortisseur à trois points intégré réduit les bruits de manipulation.\r\n∙ Le pare-brise à deux couches réduit les bruits de vent et de pop.\r\n∙ Gamme de fréquence : 50 Hz - 18 kHz.\r\n∙ Impédance de sortie : 150 O.\r\n∙ Sensibilité en circuit ouvert : -50 dBV/ Pa (3,15 mV).\r\n∙ Max. SPL (à 1 kHz, charge de 1 kO, 0,1 % THD) : 147 dB.\r\n∙ Bruit propre inhérent (niveau de bruit équivalent) : 23 dB(A).\r\n∙ Alimentation : 11 à 52 V.\r\n∙ Power consumption: 5.2 mA.\r\n∙ Dimensions (L x Ø) : 183 x 49 mm.\r\n∙ Poids : 278 grammes.'),
(80, 13, 'AKG K-240 Studio', '55', 'casque2.jpeg', '15', '∙ Dynamique.\r\n∙ Semi-ouvert.\r\n∙ Circum-aural.\r\n∙ Impédance nominale: 55 Ohm.\r\n∙ Bande passante: 15 - 25000 Hz.\r\n∙ Sensibilité: 104 dB/V.\r\n∙ THD: <0,3 %.\r\n∙ Puissance admissible: 200 mW.\r\n∙ Bandeau auto-réglable pour un ajustement parfait.\r\n∙ Nouvelles capsules XXL.\r\n∙ Cheminement de câble d\'un seul côté.\r\n∙ Câble amovible de 3 m avec fiche mini XLR et fiche mini Jack stéréo 3,5 mm plaquée or.\r\n∙ Poids avec câble: 284 g.\r\n∙ Poids sans câble: 229 g.\r\n∙ Adaptateur 6,3 mm incl.'),
(81, 13, 'AIAIAI TMA-2 Studio Wireless+', '339', 'casque3.jpeg', '20', '∙ AIAIAI TMA-2 Studio sans fil+ ; Bandeau H10 Wireless+ avec technologie BT et 2,4 Ghz ; Latence : 16 ms (2,4 ghz) ; Durée de lecture : plus de 80 heures BT, 15 heures 2,4 Ghz ; Codec BT 5.0 : AAC, SBC ; microphone intégré : 50 Hz - 10 kHz ; émetteur X01 sans fil+ ; gamme de fréquence : 20 Hz - 20 kHz ; SNR : > 93 dB ; portée : jusqu\'à 12 m ; Coussinets supra-auriculaires E08 Alcantara ; Haut-parleur S05 MKII avec membrane en biocellulose ; Pilote en néodyme de haute qualité de 40 mm ; gamme de fréquence : 20 Hz - 40 kHz ; niveau de pression acoustique : 113 dB ; impédance : 32 ohms ; Câble connecteur C02, spiralé, avec adaptateur ; comprend un étui de transport A01'),
(82, 13, 'Koss TWS250i', '68', 'casque4.jpeg', '14', '∙ Bluetooth 5.0.\r\n∙ Norme d\'étanchéité IPX5 (sueur, eau et poussière).\r\n∙ Etui de charge Smart Connect.\r\n∙ Jusqu\'à env. 4,5 heures de fonctionnement.\r\n∙ Portée de 10 mètres.\r\n∙ Bande passante: 20 - 20000 Hz.\r\n∙ Poids des écouteurs: 10 g.\r\n∙ Poids de l\'étui de charge/écouteurs: 44 g.\r\n∙ Couleur: Noir.\r\n∙ Câble de recharge, étui de charge et paires d\'embouts en silicone (S/M/L) incl.'),
(83, 13, 'Shure AONIC 50 BR', '248', 'casque5.jpeg', '5', '∙ Bande passante: 20 - 22.000 Hz.\r\n∙ Sensibilité: 97,5 dB/mW.\r\n∙ Impédance: 39 Ohm.\r\n∙ Transducteurs dynamiques de 50 mm.\r\n∙ Annulation de bruit réglable.\r\n∙ Autonomie de la batterie max. de 20 heures.\r\n∙ Connexion Jack analogique 3,5 mm pour une utilisation filaire.\r\n∙ Port de charge USB-C.\r\n∙ Commande du bout des doigts pour pause/lecture.\r\n∙ Réglage du volume et réponse aux appels.\r\n∙ Son réglable via l\'application ShurePlus PLAY (téléchargement gratuit pour IOS et Android).\r\n∙ Poids: 334 g.\r\n∙ Couleur: Marron.\r\n∙ Etui de transport, câble Jack 3,5 mm et câble de recharge USB-C incl.'),
(84, 14, 'Millenium DS-10', '10', 'pied2.jpeg', '11', '∙ Pour microphone.\r\n∙ Pliable.\r\n∙ Filetage: 3/8”.\r\n∙ Hauteur totale, filetage inclus: 160mm.\r\n∙ Couleur: Noir.'),
(85, 14, 'Millenium MS 2003', '17', 'pied3.jpeg', '14', '∙ Base en fonte avec pieds pliables.\r\n∙ Vis à tête cylindrique en métal sur l\'articulation de la flèche.\r\n∙ Filetage 3/8\" pour pince microphone.\r\n∙ Comprend un adaptateur de filetage de 3/8\" à 5/8\".\r\n∙ Hauteur réglable de 105 à 170 cm.\r\n∙ Bras réglable : 75 cm.\r\n∙ Couleur : Noir.'),
(86, 14, 'Superlux MS 200', '68', 'pied4.jpeg', '11', '∙ En acier.\r\n∙ Hauteur réglable de 1650 à 3500 mm.\r\n∙ Perche extensible de 1250 à 2050 mm.\r\n∙ Poids: 9,75 kg.'),
(87, 15, 'Millenium KB-2006 Keyboard Bench', '28', 'banc2.jpeg', '11', '∙ Assise large.\r\n∙ Revêtement en simili-cuir.\r\n∙ Hauteur réglable de 490 à 640 mm.\r\n∙ Supporte un poids max. de 120 kg.\r\n∙ Poids: 5,5 kg.'),
(88, 15, 'Global Truss 5060-0 Bar Stool', '168', 'banc3.jpeg', '21', '∙ En aluminium.\r\n∙ Avec assise en bois.\r\n∙ Hauteur : 82,5 cm.\r\n∙ Poids : 6 kg.'),
(89, 15, 'Thomann KB-47WHM', '89', 'banc4.jpeg', '2', '∙ Système de levage de précision à double croix.\r\n∙ Hauteur réglable de 450 à 580 mm.\r\n∙ Rembourrage du siège : Velour, noir.\r\n∙ Assise : 520 x 300 mm.\r\n∙ Poids : 8,75 kg.\r\n∙ Couleur : Blanc mat.'),
(90, 20, 'The t.pc USB 3.0 Stick 32 GB', '12', 'usb1.jpeg', '30', '∙ Capacité: 32 GB.\r\n∙ Compatible avec USB 2.0.'),
(91, 20, 'The t.pc USB Stick 64 Gb', '17', 'usb2.jpeg', '20', '∙ Capacité : 64 Go.\r\n∙ USB 3.0 (compatible avec USB 2.0).'),
(92, 20, 'The t.pc USB 3.0 Stick 16 GB', '8', 'usb3.jpeg', '25', '∙ Capacité: 16 GB.\r\n∙ Compatible avec USB 2.0.');

-- --------------------------------------------------------

--
-- Structure de la table `sous_categorie`
--

CREATE TABLE `sous_categorie` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sous_categorie`
--

INSERT INTO `sous_categorie` (`id`, `categorie_id`, `nom`, `photo`) VALUES
(1, 2, 'Pianos à queue', 'piano_queue.jpg'),
(2, 2, 'Pianos droits', 'piano_droit.jpg'),
(3, 2, 'Pianos numeriques', 'piano_numerique.jpg'),
(4, 1, 'Guitares électriques', 'electrique.jpeg'),
(5, 1, 'Guitares classiques', 'classique.jpeg'),
(6, 5, 'Tables de mixage', 'mixage.jpeg'),
(7, 5, 'Enceintes', 'enceinte.jpeg'),
(8, 3, 'Saxophones', 'saxophone.jpeg'),
(9, 3, 'Harmonicas', 'harmonicas.jpeg'),
(10, 3, 'Flûtes à bec', 'flute.jpeg'),
(11, 4, 'Batteries électroniques', 'electronique.jpeg'),
(12, 4, 'Batteries acoustiques', 'acoustiques.jpeg'),
(13, 6, 'Casques', 'casque.jpeg'),
(14, 6, 'Pieds pour microphone', 'pied.jpeg'),
(15, 6, 'Bancs', 'banc.jpeg'),
(16, 5, 'Microphones', 'microphone.jpeg'),
(17, 2, 'Accordéons', 'accordeon.jpeg'),
(18, 3, 'Trompettes', 'trompette.jpeg'),
(19, 5, 'Amplificateurs de puissance', 'ampli.jpeg'),
(20, 6, 'Clés USB', 'usb.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`) VALUES
(1, 'toto@dfg.dfg', '[]', '$2y$13$17lDMwdvrtXOeltRXfpQN.U.PSG11IHJBcpJNqletMaIsk263uYU6', 0),
(2, 'totop@dfg.dfg', '[]', '$2y$13$.H56O6l8AAYER6zlR0Rv..IffzjIjY6Pbsb8YuaswR3/oMjSibQH6', 0),
(3, 'hgjfuhr@lkjj.fr', '[]', '$2y$13$xZ.q3iwjgg2hK9Qz7DWWT.koNPLqvcOHaUQ7ArEcatHq74QDsQVA2', 0),
(4, 'test@dupont.com', '[]', '$2y$13$FWI0Byl6VIbahsA94MS/l.jkxEa8BG0eEB11OU10rxzh4nn07cd6i', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_29A5EC27365BF48` (`sous_categorie_id`);

--
-- Index pour la table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_52743D7BBCF5E72D` (`categorie_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_29A5EC27365BF48` FOREIGN KEY (`sous_categorie_id`) REFERENCES `sous_categorie` (`id`);

--
-- Contraintes pour la table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD CONSTRAINT `FK_52743D7BBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
