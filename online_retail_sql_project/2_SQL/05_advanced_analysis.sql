-- =========================================
-- ADVANCED SALES & CUSTOMER ANALYSIS
-- =========================================
-- Rank Customers by Total Spending
SELECT
CustomerID,
SUM(Quantity * UnitPrice) AS Total_Spent,
RANK() OVER (ORDER BY SUM(Quantity * UnitPrice) DESC) AS Customer_Rank
FROM online_retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID;


-- Top 5 Customers by Revenue
SELECT *
FROM (
    SELECT
    CustomerID,
    SUM(Quantity * UnitPrice) AS Revenue,
    RANK() OVER (ORDER BY SUM(Quantity * UnitPrice) DESC) AS Rank_Position
    FROM online_retail
    WHERE CustomerID IS NOT NULL
    GROUP BY CustomerID
) ranked_customers
WHERE Rank_Position <= 5;


-- Running Total of Revenue by Date
SELECT
DATE(InvoiceDateFormatted) AS Sales_Date,
SUM(Quantity * UnitPrice) AS Daily_Revenue,
SUM(SUM(Quantity * UnitPrice)) OVER (ORDER BY DATE(InvoiceDateFormatted)) AS Running_Total_Revenue
FROM online_retail
GROUP BY Sales_Date;


-- Monthly Revenue Growth
SELECT
    DATE_FORMAT(InvoiceDateFormatted, '%Y-%m') AS month,
    SUM(Quantity * UnitPrice) AS revenue,
    COALESCE(
        LAG(SUM(Quantity * UnitPrice)) OVER (ORDER BY DATE_FORMAT(InvoiceDateFormatted, '%Y-%m')),
        0
    ) AS previous_month_revenue
FROM online_retail
GROUP BY month;


-- Identify Repeat Customers
SELECT
CustomerID,
COUNT(DISTINCT InvoiceNo) AS Number_of_Orders
FROM online_retail
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
HAVING Number_of_Orders > 1
ORDER BY Number_of_Orders DESC;


-- Top Product per Country
SELECT *
FROM (
    SELECT
    Country,
    StockCode,
    Description,
    SUM(Quantity * UnitPrice) AS Revenue,
    RANK() OVER (PARTITION BY Country ORDER BY SUM(Quantity * UnitPrice) DESC) AS Rank_Position
    FROM online_retail
    GROUP BY Country, StockCode, Description
) ranked_products
WHERE Rank_Position = 1;

