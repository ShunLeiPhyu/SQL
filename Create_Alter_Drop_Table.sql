-- Drop the table named 'Employees'
DROP TABLE IF EXISTS Employees;

-- 1. Create Table
-- Create the table 'Employees'
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    JobTitle VARCHAR(50),
    Department VARCHAR(200),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- Query to show the structure of the table
DESCRIBE Employees;

-- 2. Alter Table (Add Column)
-- Add a new column 'Email' to the 'Employees' table
ALTER TABLE Employees
ADD COLUMN Email VARCHAR(100);

-- Query to show the updated structure of the table
DESCRIBE Employees;

-- 3. Alter Table (Modify Column)
-- Modify the 'Salary' column to allow a larger number
ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL(15, 2);

-- Query to show the updated structure of the table
DESCRIBE Employees;

-- 4. Alter Table (Add Constraint)
-- Add a unique constraint to the 'Email' column
-- UNIQUE constraint is to maintain data integrity. It ensures that no two rows in a table have the same value in the specified column(s)
ALTER TABLE Employees
ADD CONSTRAINT unique_email UNIQUE (Email);

-- Query to show the updated structure of the table
DESCRIBE Employees;

-- 5. Drop Column
-- Drop the 'Email' column from the 'Employees' table
ALTER TABLE Employees
DROP COLUMN Email;

-- Query to show the updated structure of the table
DESCRIBE Employees;

-- 6. Drop Table
-- Drop the table 'Employees' if it exists
DROP TABLE IF EXISTS Employees;

-- Verify the table has been dropped
SHOW TABLES;








