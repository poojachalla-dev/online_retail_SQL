**E-Commerce Sales Analysis using SQL**
**Project Overview**

This project analyzes transactional data from an online retail store to uncover insights about sales performance, customer behavior, and product trends. Using SQL, the dataset was cleaned, transformed, and analyzed to generate actionable business insights that could help an e-commerce company optimize revenue and improve decision-making.

The dataset contains over 500,000 retail transactions, making it suitable for demonstrating real-world data analysis techniques.

**Dataset**

**Source:** Kaggle – Online Retail Dataset

[Download Dataset from Kaggle](https://www.kaggle.com/datasets/lakshmi25npathi/online-retail-dataset)

The dataset contains transactional records from a UK-based online retailer between 2010 and 2011.

**Columns**
**Column	Description**
InvoiceNo	Unique invoice number for each transaction
StockCode	Unique product code
Description	Product description
Quantity	Number of items purchased
InvoiceDate	Date and time of purchase
UnitPrice	Price per unit
CustomerID	Unique customer identifier
Country	Country of the customer
Tools Used

**SQL(MySQL)** – Data cleaning, transformation, and analysis

**Excel** – Data validation and quick summaries

**Tableau / Visualization tools** – Visual exploration of results

**Project Structure**
```
online_retail_sql_project
│
├── 1_Data
│   ├── online_retail.csv
│   └── online_retail_cleaned.csv
│
├── 2_SQL
│   ├── 01_data_cleaning.sql
│   ├── 02_sales_analysis.sql
│   ├── 03_customer_analysis.sql
│   ├── 04_product_performance.sql
│   └── 05_advanced_analysis.sql
│
├── 3_Visualizations
│
├── 4_Reports
│   └── Business_Insights.docx
│
└── 5_Dashboard
```

**Data Cleaning Steps**

Several preprocessing steps were applied to ensure data quality:

Removed cancelled orders (Invoice numbers starting with "C")

Removed rows with missing CustomerID

Calculated Total Revenue per transaction

Standardized date formats for time-based analysis


**Key Analysis Performed**

**1. Sales Trend Analysis**

Analyzed monthly revenue to identify sales patterns and seasonal trends.

**2. Top Selling Products**

Identified products with the highest sales volume to understand product demand.

**3. Revenue by Country**

Analyzed geographic distribution of sales to identify key markets.

**4. Customer Analysis**

Identified top customers based on total purchase value.

**5. Product Affinity Analysis**

Used self-joins to identify products frequently purchased together.


**Key Business Insights**

A small group of customers contributes a significant portion of total revenue.

Certain products consistently outperform others in sales volume.

Most revenue originates from a few key countries.

Seasonal patterns indicate higher sales during holiday periods.

These insights can help businesses optimize inventory planning, marketing campaigns, and customer retention strategies.


**Potential Business Recommendations**

Introduce loyalty programs for high-value customers.

Bundle frequently purchased products to increase average order value.

Focus marketing efforts on high-revenue countries.

Increase inventory for top-performing products.



**Author**

Pooja Challa

