USE online_retail;

-- =========================================
-- DATA QUALITY CHECKS
-- =========================================

-- Check missing Customer IDs
SELECT COUNT(*) 
FROM online_retail
WHERE CustomerID IS NULL;

-- Check negative quantities
SELECT *
FROM online_retail
WHERE Quantity < 0;

-- Check zero or negative prices
SELECT *
FROM online_retail
WHERE UnitPrice <= 0;

SET SQL_SAFE_UPDATES = 0;

-- =========================================
-- DATA CLEANING
-- =========================================
-- Remove rows where CustomerID is NULL
DELETE FROM online_retail
WHERE CustomerID IS NULL;

-- Remove rows with negative quantity
DELETE FROM online_retail
WHERE Quantity <= 0;

-- Remove rows with zero or negative price
DELETE FROM online_retail
WHERE UnitPrice <= 0;

-- =========================================
-- CUSTOMERID TO INT
-- =========================================
-- Replace empty CustomerID values ('') with NULL.
-- Some rows in the Online Retail dataset contain blank CustomerIDs.
-- Converting them to NULL allows proper datatype conversion and cleaner analysis.
UPDATE online_retail
SET CustomerID = NULL
WHERE CustomerID = '';

-- Convert the CustomerID column from FLOAT/VARCHAR to INTEGER.
-- CustomerID is an identifier and should not contain decimal values like 14646.0.
-- This ensures the column stores clean integer IDs.
ALTER TABLE online_retail
MODIFY CustomerID INT;

SELECT CustomerID
FROM online_retail
LIMIT 10;

-- =========================================
-- DATE FORMAT CONVERSION
-- =========================================
-- Add a new column to store InvoiceDate in proper DATETIME format
-- Reason: The original InvoiceDate column may be stored as TEXT/VARCHAR
-- which makes time-based analysis difficult.
-- Creating a new DATETIME column ensures we can use MySQL date functions.
ALTER TABLE online_retail
ADD COLUMN InvoiceDateFormatted DATETIME;

-- Populate the new DATETIME column with values from the original column
-- Reason: This converts the existing date values into a format that MySQL
-- can recognize for calculations such as extracting month, year, or day.
UPDATE online_retail
SET InvoiceDateFormatted = InvoiceDate;

-- Verify that the date values were correctly inserted into the new column
-- This helps confirm the conversion worked before performing analysis.
SELECT InvoiceDate
FROM online_retail
LIMIT 10;

-- =========================================
-- REMOVE DUPLICATES
-- =========================================

DELETE t1
FROM online_retail t1
JOIN online_retail t2
ON t1.InvoiceNo = t2.InvoiceNo
AND t1.StockCode = t2.StockCode
AND t1.InvoiceDate = t2.InvoiceDate
AND t1.CustomerID = t2.CustomerID
AND t1.Quantity = t2.Quantity
AND t1.UnitPrice = t2.UnitPrice
AND t1.Country = t2.Country
AND t1.Description = t2.Description
AND t1.InvoiceNo > t2.InvoiceNo;

SELECT * FROM online_retail LIMIT 10;