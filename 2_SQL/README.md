# SQL Analysis Scripts

This folder contains SQL scripts used for cleaning and analyzing the Online Retail dataset.

Database: MySQL  
Dataset: Online Retail Dataset from Kaggle

## Files

### 01_create_database_and_table.sql
- Create database
- Use database
- Create Table

### 02_data_cleaning.sql
Performs initial data preparation including:
- Handling missing CustomerID values
- Converting InvoiceDate to DATETIME format
- Removing invalid records such as negative quantities

### 03_sales_analysis.sql
Analyzes overall sales performance:
- Total revenue calculation
- Monthly revenue trends
- Month-over-month revenue comparison using window functions

### 04_customer_analysis.sql
Explores customer purchasing behavior:
- Number of orders per customer
- Top customers by revenue
- Customer purchase frequency

### 05_product_analysis.sql
Identifies product performance:
- Best selling products
- Revenue contribution by product
- Product demand patterns

## 06_advanced_analysis.sql

1. ## Rank Customers by Total Spending
   Ranks all customers based on total spending using `RANK()`.

2. ## Top 5 Customers by Revenue
   Extracts the top 5 customers generating the highest revenue.

3. ## Running Total of Revenue by Date
    Calculates daily revenue and running total revenue over time.

4. ## Monthly Revenue Growth
   Calculates revenue per month and previous month revenue using LAG().

5. ## Identify Repeat Customers
   Finds customers who placed more than one order.

6. ## Top Product per Country
   Finds the top revenue-generating product for each country.


## Usage

1. Import the dataset into MySQL.
2. Run `01_data_cleaning.sql` first.
3. Run the analysis scripts in order: `02_sales_analysis.sql`, `03_customer_analysis.sql`, `04_product_analysis.sql`.
4. Use the `Reports` and `Visualizations` folders for exporting results and charts.

