-- Banco de dados Master do SQL
USE MASTER;

-- Deletando BD Vendas
DROP DATABASE VENDAS;

-- Criando BD Vendas
CREATE DATABASE VENDAS;

-- Usando BD Vendas
USE VENDAS;

-- Criando Tabela Orders
CREATE TABLE Orders (
	OrderID	int Primary Key,
	CustomerID int NOT NULL,
	EmployeeID int NOT NULL,
	OrderDate datetime NULL,
	ShipperID int NOT NULL
);

-- Criando Tabela OrderDetails
CREATE TABLE OrderDetails (
	OrderDetailID	int Primary Key,
	OrderID	int NOT NULL,
	ProductID int NOT NULL,
	Quantity int NOT NULL
);

-- Criando Tabela Products
CREATE TABLE Products (
	ProductID int Primary Key,
	ProductName varchar(255) NOT NULL,
	SupplierID int NOT NULL,
	CategoryID int NOT NULL,
	Unit varchar(255)  NULL,
	Price decimal(10,2) NULL
);

-- Criando Tabela Suppliers
CREATE TABLE Suppliers (
	SupplierID int Primary Key,
	SupplierName varchar(255) NOT NULL,
	ContactName varchar(255) NOT NULL,
	Address varchar(255) NOT NULL,
	City varchar(255) NOT NULL,
	Country varchar(255) NOT NULL,
	Phone varchar(255) NOT NULL
);

-- Criando Tabela Categories
CREATE TABLE Categories (
	CategoryID int Primary Key,
	CategoryName varchar(255) NOT NULL,
	[Description] varchar(255) NOT NULL
);

-- Criando Tabela Shippers
CREATE TABLE Shippers (
	ShipperID int Primary Key,
	ShipperName varchar(255) NOT NULL,
	Phone varchar(255) NOT NULL
);

-- Criando Tabela Employees
CREATE TABLE Employees (
	EmployeeID int Primary Key,
	LastName varchar(255) NOT NULL,
	FirstName varchar(255) NOT NULL,
	BirthDate datetime NOT NULL,
	Notes varchar(MAX) NOT NULL
);

-- Criando Tabela Employees
CREATE TABLE Customers (
	CustomerID int Primary Key,
	CustomerName varchar(255) NOT NULL,
	ContactName varchar(255) NOT NULL,
	Address varchar(255) NOT NULL,
	City varchar(255) NOT NULL,
	Country varchar(255) NOT NULL
);

-- Criando as Chaves Estrangeiras (FKs)
ALTER TABLE Orders ADD CONSTRAINT Fk_Orders_Customers 
	Foreign Key (CustomerID) References Customers (CustomerID);

ALTER TABLE Orders ADD CONSTRAINT Fk_Orders_Employees 
	Foreign Key (EmployeeID) References Employees (EmployeeID);

ALTER TABLE Orders ADD CONSTRAINT Fk_Orders_Shippers
	Foreign Key (ShipperID) References Shippers (ShipperID);
	
ALTER TABLE OrderDetails ADD CONSTRAINT Fk_OrderDetails_Orders
	Foreign Key (OrderID) References Orders (OrderID);
	
ALTER TABLE OrderDetails ADD CONSTRAINT Fk_OrderDetails_Products
	Foreign Key (ProductID) References Products (ProductID);
	
ALTER TABLE Products ADD CONSTRAINT Fk_Products_Categories
	Foreign Key (CategoryID) References Categories (CategoryID);

ALTER TABLE Products ADD CONSTRAINT Fk_Products_Suppliers
	Foreign Key (SupplierID) References Suppliers (SupplierID);












