-- =========================================
-- PRODUCT PERFORMANCE ANALYSIS
-- =========================================
-- Top 10 Best-Selling Products by Quantity
SELECT 
StockCode,
Description,
SUM(Quantity) AS Total_Quantity_Sold
FROM online_retail
GROUP BY StockCode, Description
ORDER BY Total_Quantity_Sold DESC
LIMIT 10;

-- Top 10 Products by Revenue
SELECT 
StockCode,
Description,
SUM(Quantity * UnitPrice) AS Total_Revenue
FROM online_retail
GROUP BY StockCode, Description
ORDER BY Total_Revenue DESC
LIMIT 10;

-- Number of Orders per Product
SELECT 
StockCode,
Description,
COUNT(DISTINCT InvoiceNo) AS Number_of_Orders
FROM online_retail
GROUP BY StockCode, Description
ORDER BY Number_of_Orders DESC
LIMIT 10;

-- Average Price per Product
SELECT 
StockCode,
Description,
AVG(UnitPrice) AS Average_Price
FROM online_retail
GROUP BY StockCode, Description
ORDER BY Average_Price DESC;

--  Products Sold in the Most Countries
SELECT 
StockCode,
Description,
COUNT(DISTINCT Country) AS Countries_Sold
FROM online_retail
GROUP BY StockCode, Description
ORDER BY Countries_Sold DESC
LIMIT 10;

-- Products with Highest Total Revenue
SELECT 
StockCode,
Description,
SUM(Quantity * UnitPrice) AS Product_Revenue
FROM online_retail
GROUP BY StockCode, Description
ORDER BY Product_Revenue DESC;

