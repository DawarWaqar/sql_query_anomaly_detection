-- -- Create a new database
-- CREATE DATABASE QueryProcessingDB;
-- GO

-- -- Use the newly created database
-- USE QueryProcessingDB;
-- GO

-- -- Create a table for storing products
-- CREATE TABLE Products (
--     ProductID INT PRIMARY KEY,
--     ProductName VARCHAR(100),
--     Price DECIMAL(10, 2),
--     Stock INT
-- );
-- GO

-- -- Create a table for storing customers
-- CREATE TABLE Customers (
--     CustomerID INT PRIMARY KEY,
--     FirstName VARCHAR(100),
--     LastName VARCHAR(100),
--     Email VARCHAR(100)
-- );
-- GO

-- -- Create a table for storing orders
-- CREATE TABLE Orders (
--     OrderID INT PRIMARY KEY,
--     CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
--     OrderDate DATETIME,
--     TotalAmount DECIMAL(10, 2)
-- );
-- GO

-- -- Create a table for storing order details
-- CREATE TABLE OrderDetails (
--     OrderDetailID INT PRIMARY KEY,
--     OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
--     ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
--     Quantity INT,
--     UnitPrice DECIMAL(10, 2)
-- );
-- GO

-- -- Insert sample data into Products table
-- INSERT INTO Products (ProductID, ProductName, Price, Stock) VALUES
-- (1, 'Laptop', 999.99, 50),
-- (2, 'Smartphone', 599.99, 200),
-- (3, 'Tablet', 299.99, 150),
-- (4, 'Monitor', 199.99, 75),
-- (5, 'Keyboard', 49.99, 300);
-- GO

-- -- Insert sample data into Customers table
-- INSERT INTO Customers (CustomerID, FirstName, LastName, Email) VALUES
-- (1, 'John', 'Doe', 'john.doe@example.com'),
-- (2, 'Jane', 'Smith', 'jane.smith@example.com'),
-- (3, 'Alice', 'Johnson', 'alice.johnson@example.com'),
-- (4, 'Bob', 'Brown', 'bob.brown@example.com'),
-- (5, 'Charlie', 'Davis', 'charlie.davis@example.com');
-- GO

-- -- Insert sample data into Orders table
-- INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
-- (1, 1, '2024-07-01 10:00:00', 1599.98),
-- (2, 2, '2024-07-02 11:30:00', 599.99),
-- (3, 3, '2024-07-03 12:45:00', 349.98),
-- (4, 4, '2024-07-04 14:00:00', 199.99),
-- (5, 5, '2024-07-05 15:15:00', 49.99);
-- GO

-- -- Insert sample data into OrderDetails table
-- INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice) VALUES
-- (1, 1, 1, 1, 999.99),
-- (2, 1, 2, 1, 599.99),
-- (3, 2, 3, 2, 299.99),
-- (4, 3, 4, 1, 199.99),
-- (5, 4, 5, 1, 49.99);
-- GO



-- Create the database
CREATE DATABASE QPerformanceAnom;
GO

-- Use the newly created database
USE QPerformanceAnom;
GO

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Stock INT
);
GO

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);
GO

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO

-- Create the OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
GO
