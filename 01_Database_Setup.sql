CREATE DATABASE RetailSalesDB;
SHOW databases;

USE RetailSalesDB;

CREATE TABLE Customers (
	CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    RegistrationDate DATE);
DESCRIBE Customers;

CREATE TABLE Products (
	ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT DEFAULT 0);
DESCRIBE Products;

CREATE TABLE Orders (
	OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    OrderStatus VARCHAR(20) DEFAULT 'Completed',
    
    FOREIGN KEY (CustomerID)
		REFERENCES Customers(CustomerID));
DESCRIBE Orders;


CREATE TABLE OrderDetails(
	OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2)NOT NULL,
    
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID));
DESCRIBE OrderDetails;

SHOW TABLES;

