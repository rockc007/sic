AIM: To create data warehouse using SQL server management studio.
➢ CODING:
GO
Create database Sales_DW
Go
Use Sales_DW
Go 
Create table DimCustomer
( CustomerID int primary key identity,
CustomerAltID varchar(10) not null,
CustomerName varchar(50),
Gender varchar(20)
)
Go
Insert into DimCustomer
(CustomerAltID,CustomerName,Gender)values
('IMI-001','Henry Ford','M'),
('IMI-002','Sasha Skye','F'),
('IMI-003','Tia Matthews','F'),
('IMI-004','Bill Gates','M'),
('IMI-005','Eric Dane','M'),
('IMI-006','Tom Ford','M')
CREATE TABLE Product(
[Product ID] INT NOT NULL,
Product Name] NVARCHAR(50) NOT NULL,
[Product Price] float NOT NULL,
[Category Name] NVARCHAR(50) NOT NULL,
Class NVARCHAR(50) NOT NULL,
[Modify Date] datetime2(7) NOT NULL,
[Vitality Date] NVARCHAR(50) NOT NULL
);
Insert into Product([Product ID],[Product Name],[Product Price],[Category 
Name],Class,[Modify Date],[Vitality Date])values
(101,'Laptop',550000.00,'Electronic','Premium','2026-02-15 10:30:00.00000000','2 
years'),
(102,'Desktop',590000.00,'Electronic','Premium','2026-02-17 10:30:00.00000000','3 
years'),
(103,'Chair',7500.00,'Furniture','Economy','2026-02-18 10:30:00.00000000','1 years'),
(104,'Shoes',1500.00,'Footwear','Premium','2026-02-15 10:30:00.00000000','3 years'),
(105,'Backpack',1800.00,'Accessories','Economy','2026-02-19 10:30:00.00000000','3 
years'),
(106,'Laptop',580000.00,'Electronic','Premium','2026-02-15 10:30:00.00000000','2 
years')
CREATE TABLE [Transaction Date]
(
 [Transaction Date] DATETIME2(7) PRIMARY KEY,
 [Transaction Day] INT NOT NULL,
 [Transaction Month] INT NOT NULL,
 [Transaction Year] INT NOT NULL
);
GO
INSERT INTO [Transaction Date]
VALUES
('2026-02-01', 1, 2, 2026),
('2026-02-02', 2, 2, 2026),
('2026-02-03', 3, 2, 2026),
('2026-02-04', 4, 2, 2026),
('2026-02-05', 5, 2, 2026),
('2026-02-06', 6, 2, 2026);
GO
CREATE TABLE [Transaction Fact]
(
 [Transaction Number] NVARCHAR(50) PRIMARY KEY,
 [Employee ID] INT NOT NULL,
 [Product ID] INT NOT NULL,
 [Customer ID] INT NOT NULL,
 [Transaction Date] DATETIME2(7) NOT NULL,
 [Quantity Sold] INT NOT NULL,
 [Total Price] FLOAT NOT NULL,
 Discount FLOAT NOT NULL
);
GO
INSERT INTO [Transaction Fact]
VALUES
('T001', 201, 101, 1, '2026-02-01', 1, 55000, 500),
('T002', 202, 102, 2, '2026-02-02', 2, 50000, 1000),
('T003', 203, 103, 3, '2026-02-03', 1, 5000, 200),
('T004', 204, 104, 4, '2026-02-04', 1, 8000, 300),
('T005', 205, 105, 5, '2026-02-05', 2, 6000, 500),
('T006', 206, 106, 6, '2026-02-06', 3, 4500, 250);
GO
SELECT * FROM DimCustomer;
SELECT * FROM Product;
SELECT * FROM [Transaction Date];
SELECT * FROM [Transaction Fact];