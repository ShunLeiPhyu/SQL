-- Step 1: Create a database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS MyDatabase;

-- Step 2: Use the newly created or an existing database
USE MyDatabase;

-- Step 3: Drop the tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

-- Step 4: Create the Customers table with PRIMARY KEY and UNIQUE constraints
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key Constraint
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,                  -- Unique Constraint
    DateOfBirth DATE
);

-- Step 5: Create the Orders table with PRIMARY KEY, FOREIGN KEY, and CHECK constraints
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,     -- Primary Key Constraint
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10, 2) CHECK (Amount >= 0),  -- Check Constraint (Amount cannot be negative)
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)  -- Foreign Key Constraint (linking Orders to Customers)
);

-- Step 6: Insert some data into Customers table
INSERT INTO Customers (Name, Email, DateOfBirth) 
VALUES 
('John Doe', 'john.doe@example.com', '1985-06-15'),
('Jane Smith', 'jane.smith@example.com', '1990-02-20');

-- Step 7: Insert some data into Orders table
INSERT INTO Orders (CustomerID, OrderDate, Amount) 
VALUES 
(1, '2024-09-15', 150.50), 
(2, '2024-09-16', 99.99);

-- Step 8: Select data from both tables to see the results
SELECT * FROM Customers;
SELECT * FROM Orders;
