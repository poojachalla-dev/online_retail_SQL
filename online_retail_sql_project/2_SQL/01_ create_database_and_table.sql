-- ============================================
-- E-Commerce Sales Analysis Project
-- Database Setup Script
-- ============================================

-- Create a new database for the project
CREATE DATABASE online_retail;

-- Select the database to work with
USE online_retail;

-- Create a table to store the online retail transaction data
CREATE TABLE online_retail (
    
    -- Unique invoice number for each transaction
    InvoiceNo VARCHAR(20),
    
    -- Unique product/item code
    StockCode VARCHAR(20),
    
    -- Product description
    Description TEXT,
    
    -- Quantity of items purchased
    Quantity INT,
    
    -- Date and time when the transaction occurred
    InvoiceDate VARCHAR(30),
    
    -- Price per unit of the product
    UnitPrice DECIMAL(10,2),
    
    -- Unique identifier for the customer
    CustomerID VARCHAR(20),
    
    -- Country where the customer is located
    Country VARCHAR(50)
);

-- Display all tables in the current database
SHOW TABLES;
 
-- Count total number of records in the dataset
SELECT COUNT(*) FROM online_retail;

DESCRIBE online_retail;
