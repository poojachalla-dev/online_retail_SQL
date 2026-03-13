-- =========================================
-- CUSTOMER ANALYSIS
-- =========================================
-- Total Unique Customers
SELECT 
COUNT(DISTINCT CustomerID) AS Total_Customers
FROM online_retail;

--  Top 10 Customers by Revenue
SELECT
CustomerID,
SUM(Quantity * UnitPrice) AS total_spent
FROM online_retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID;


--  Number of Orders per Customer
SELECT 
CustomerID,
COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM online_retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Total_Orders DESC;


-- Average Order Value per Customer
SELECT 
CustomerID,
SUM(Quantity * UnitPrice) / COUNT(DISTINCT InvoiceNo) AS Avg_Order_Value
FROM online_retail
GROUP BY CustomerID
ORDER BY Avg_Order_Value DESC;


-- Customers with Highest Purchase Quantity
SELECT 
CustomerID,
SUM(Quantity) AS Total_Products_Purchased
FROM online_retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Total_Products_Purchased DESC
LIMIT 10;


-- Revenue Contribution by Customer
SELECT 
CustomerID,
SUM(Quantity * UnitPrice) AS Customer_Revenue
FROM online_retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Customer_Revenue DESC;


-- Customers with Only One Purchase
SELECT 
CustomerID,
COUNT(DISTINCT InvoiceNo) AS Orders_Count
FROM online_retail
GROUP BY CustomerID
HAVING Orders_Count = 1;

