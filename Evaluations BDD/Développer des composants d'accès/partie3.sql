/* L'entreprise souhaite mettre en place cette règle de gestion:

Pour tenir compte des coûts liés au transport, on vérifiera que pour chaque produit d’une commande, le client réside dans le même pays que le fournisseur du même produit

Il s'agit d'interdire l'insertion de produits dans les commandes ne satisfaisants pas à ce critère.

Décrivez par quel moyen et avec quels outils (procédures stockées, trigger...) vous pourriez implémenter la règle de gestion suivante. */



DROP TRIGGER IF EXISTS paysClient_paysFournisseur;


DELIMITER |

CREATE TRIGGER paysClient_paysFournisseur AFTER INSERT ON `order details`
FOR EACH ROW
  BEGIN
     DECLARE pays_existe varchar(50); 
     SET pays_existe = (SELECT orders.OrderID,customers.Country,suppliers.Country
                        FROM `order details`
                        JOIN orders ON orders.OrderID = `order details`.OrderID
                        JOIN customers ON customers.CustomerID = orders.CustomerID
                        JOIN products ON products.ProductID = `order details`.ProductID
                        JOIN suppliers ON suppliers.SupplierID = products.SupplierID
                        WHERE suppliers.Country = customers.Country
                        GROUP BY orders.OrderID); 
     IF pays_existe IS NULL
       THEN  
         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Le pays du client et du fournisseur ne correspond pas';
     END IF;
  END |

DELIMITER ;
