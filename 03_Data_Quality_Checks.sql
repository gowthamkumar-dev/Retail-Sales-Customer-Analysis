SELECT * FROM Customers
WHERE FirstName IS NULL OR Email IS NULL OR City IS NULL OR RegistrationDate IS NULL;

SELECT Email, COUNT(*) AS DuplicateCount
FROM Customers
GROUP BY Email
HAVING COUNT(*) >1;

SELECT ProductName, COUNT(*) AS DuplicateCount
FROM Products
GROUP BY ProductName
HAVING Count(*) > 1;

SELECT * FROM Products
WHERE Price <= 0;

SELECT * FROM Products
WHERE StockQuantity < 0;

SELECT * FROM orderdetails
WHERE Quantity <0;

SELECT * FROM orderdetails
WHERE UnitPrice <=0;

SELECT * FROM Orders
WHERE OrderStatus NOT IN ('Completed', 'Pending', 'Cancelled');

SELECT * FROM Orders
WHERE OrderDate IS NULL OR OrderDate > CURDATE();

SELECT * FROM Customers
WHERE RegistrationDate IS NULL OR RegistrationDate > CURDATE();

SELECT FirstName, LastName, Email, COUNT(*) AS DuplicateLeads
FROM Customers
GROUP BY FirstName, LastName, Email
HAVING COUNT(*) >1
ORDER BY DuplicateLeads;

SELECT OrderID, ProductID, Quantity, COUNT(*) AS DuplicateLeads
FROM OrderDetails
GROUP BY OrderID, ProductID, Quantity
HAVING COUNT(*) >1
ORDER BY DuplicateLeads;

SELECT od.OrderDetailID, od.OrderID FROM OrderDetails od 
LEFT JOIN Orders o ON od.OrderID = o.OrderID
WHERE o.OrderID IS NULL;

SELECT od.OrderDetailID, od.ProductID From OrderDetails od
LEFT JOIN Products P ON od.ProductID = p.ProductID
WHERE p.productID IS NULL;

SELECT o.OrderID, o.CustomerID FROM Orders o
LEFT JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

SELECT o.OrderID, O.CustomerID FROM Orders o
LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID
WHERE o.OrderID IS NULL;

SELECT p.ProductID, p.ProductName, p.Category FROM Products p
LEFT JOIN Orders o ON p.ProductID = o.Orderid
WHERE o.OrderID IS NULL;

SELECT c.CustomerID, c.Email FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.OrderID
WHERE o.OrderID IS NULL;
