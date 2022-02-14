/* Programmer des procédures stockées sur le SGBD

Créez une procédure stockée qui sélectionne les commandes non soldées (en cours de livraison), puis une autre qui renvoie le délai moyen entre la date de commande et la date
de facturation. */

DELIMITER |

CREATE PROCEDURE commandeNonLivre()
BEGIN
SELECT * FROM livraison WHERE date_livraison IS NULL;
END |

DELIMITER ;


--


DELIMITER |

CREATE PROCEDURE delaiMoyen()
BEGIN
SELECT ROUND(AVG(DATEDIFF(date_reglement, date_commande))) AS `Délai Moyen` FROM commande;
END |

DELIMITER ;