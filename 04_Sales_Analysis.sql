SELECT SUM(Quantity * UnitPrice) From OrderDetails;

SELECT COUNT(*) AS TotalOrders FROM Orders;

SELECT COUNT(*) AS TotalCustomers FROM Customers;

SELECT COUNT(*) AS TotalProducts FROM Products;

SELECT AVG(Price) AS AveragePrice FROM Products;

SELECT MAX(Price) AS HighestPrice FROM Products;

SELECT MIN(Price) AS LowestPrice FROM Products;

SELECT SUM(Quantity) AS TotalQuantity FROM OrderDetails;

SELECT ProductID, SUM(Quantity * UnitPrice) FROM OrderDetails
GROUP BY ProductID;

SELECT p.Category, SUM(od.Quantity * od.UnitPrice) FROM Products p
INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.Category;

SELECT OrderStatus, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderStatus;

SELECT CustomerID, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID;

SELECT ProductName, SUM(StockQuantity * Price) AS TotalInventoryValue
FROM Products
GROUP BY ProductName
HAVING SUM(StockQuantity * Price) > 5000;

SELECT ProductID, ProductName, SUM(StockQuantity * Price) AS TotalInventoryValue
FROM Products
GROUP BY ProductID
ORDER BY TotalInventoryValue DESC
LIMIT 1;

SELECT ProductName, Category, Price FROM Products
WHERE Price > 1000;