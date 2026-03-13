USE online_retail;

-- =========================================
-- SALES ANALYSIS
-- =========================================

-- Total Revenue
SELECT 
SUM(Quantity * UnitPrice) AS Total_Revenue
FROM online_retail;


--  Total Number of Orders
SELECT 
COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_retail;


--  Total Quantity Sold
SELECT 
SUM(Quantity) AS Total_Products_Sold
FROM online_retail;


-- Revenue by Country
SELECT 
Country,
SUM(Quantity * UnitPrice) AS Revenue
FROM online_retail
GROUP BY Country
ORDER BY Revenue DESC;


--  Monthly Revenue Trend
SELECT 
DATE_FORMAT(InvoiceDateFormatted,'%Y-%m') AS Month,
SUM(Quantity * UnitPrice) AS Monthly_Revenue
FROM online_retail
GROUP BY Month
ORDER BY Month;


-- Average Order Value
SELECT 
SUM(Quantity * UnitPrice) / COUNT(DISTINCT InvoiceNo) AS Avg_Order_Value
FROM online_retail;


--  Top 10 Countries by Number of Orders
SELECT 
Country,
COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_retail
GROUP BY Country
ORDER BY Total_Orders DESC
LIMIT 10;


-- Daily Revenue Trend
SELECT 
DATE(InvoiceDateFormatted) AS Date,
SUM(Quantity * UnitPrice) AS Daily_Revenue
FROM online_retail
GROUP BY Date
ORDER BY Date;


-- Highest Revenue Orders
SELECT 
InvoiceNo,
SUM(Quantity * UnitPrice) AS Order_Revenue
FROM online_retail
GROUP BY InvoiceNo
ORDER BY Order_Revenue DESC
LIMIT 10;
