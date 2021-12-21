/* Codez deux procédures stockées correspondant aux requêtes 9 et 10. Les procédures stockées doivent prendre en compte les éventuels 
paramètres. */


/* Requête 9 */

DELIMITER |

CREATE PROCEDURE DateCommande()

BEGIN
   SELECT MAX(OrderDate) AS 'Date de dernière commande'
    FROM orders
    JOIN customers ON orders.CustomerID = customers.CustomerID
    WHERE CompanyName = 'Du monde entier' ;
END |

DELIMITER ;

CALL DateCommande('Du monde entier');


/* Requête 10 */

DELIMITER |

CREATE PROCEDURE DelaiMoyen ()

BEGIN
   SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS 'Délai moyen de livraison en jours' 
    FROM orders ;
END |

DELIMITER ;

CALL DelaiMoyen(1588);
