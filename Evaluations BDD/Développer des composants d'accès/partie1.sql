/* 1 - Liste des contacts français */

    SELECT CompanyName AS Société, ContactName AS Contact, ContactTitle AS Fonction, Phone AS Téléphone 
    FROM Customers
    WHERE Country = 'FRANCE' ;


/* 2 - Produits vendus par le fournisseur « Exotic Liquids » */

    SELECT ProductName AS Produit, UnitPrice AS Prix 
    FROM products 
    JOIN suppliers ON suppliers.SupplierID = products.SupplierID 
    WHERE CompanyName = 'Exotic Liquids' ;


/* 3 - Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant */

    SELECT CompanyName,COUNT(UnitsOnOrder) AS 'Nombre produits'
    FROM Suppliers
    JOIN Products ON Products.SupplierID = Suppliers.SupplierID
    WHERE Country ='France'
    GROUP BY companyname
    ORDER BY COUNT(unitsonorder) DESC ;


/* 4 - Liste des clients Français ayant plus de 10 commandes */

    SELECT companyname AS Client, COUNT(orderid) AS 'Nombre commandes'
    FROM customers
    JOIN orders ON orders.customerid = customers.customerid
    WHERE country = 'France'
    GROUP BY customers.customerid
    HAVING COUNT(orderid) > 10 ;


/* 5 - Liste des clients ayant un chiffre d’affaires > 30.000 */ 

    SELECT CompanyName AS Client, SUM(UnitPrice*Quantity) AS CA, Country AS Pays 
    FROM Customers
    JOIN orders ON Customers.customerID=orders.customerID
    JOIN `order details` ON orders.orderID= `order details`.OrderID
    GROUP BY orders.CustomerID
    HAVING SUM(UnitPrice*Quantity)>30000
    ORDER BY SUM(UnitPrice*Quantity) DESC ;


/* 6 – Liste des pays dont les clients ont passé commande de produits fournis par « Exotic Liquids » */

    SELECT DISTINCT customers.country AS Pays
    FROM customers
    JOIN orders ON orders.customerid = customers.customerid
    JOIN `order details` ON `order details`.orderid = orders.orderid
    JOIN products ON products.productid = `order details`.productid
    JOIN suppliers ON suppliers.supplierid = products.supplierid
    WHERE suppliers.companyname = 'Exotic Liquids'
    ORDER BY pays ;


/* 7 – Montant des ventes de 1997 */

    SELECT SUM(UnitPrice*Quantity) AS 'Montant Ventes 97'
    FROM `order details`
    JOIN orders ON `order details`.orderID = orders.orderID
    WHERE year(OrderDate) = 1997 ;


/* 8 – Montant des ventes de 1997 mois par mois */

    SELECT MONTH(OrderDate) AS 'Mois 97', SUM(UnitPrice*Quantity) AS 'Montant Ventes 97'
    FROM `order details`
    JOIN orders ON `order details`.orderID = orders.orderID
    WHERE YEAR(OrderDate) = 1997
    GROUP BY MONTH(OrderDate)
    HAVING SUM(UnitPrice*Quantity) ; 


/* 9 – Depuis quelle date le client « Du monde entier » n’a plus commandé ? */

    SELECT MAX(OrderDate) AS 'Date de dernière commande'
    FROM orders
    JOIN customers ON orders.CustomerID = customers.CustomerID
    WHERE CompanyName = 'Du monde entier' ;

/* 10 – Quel est le délai moyen de livraison en jours ? */

    SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS 'Délai moyen de livraison en jours' 
    FROM orders ;
