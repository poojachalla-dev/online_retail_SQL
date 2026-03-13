# 🛒 E-Commerce Sales Analysis using SQL

A data analysis project that explores transactional data from an online retail store to uncover insights about **sales performance, customer behavior, and product trends** using **SQL and Tableau**.

The dataset contains **500,000+ transactions**, making it suitable for demonstrating real-world data cleaning, analysis, and visualization techniques used by data analysts.

---

# 📊 Project Overview

This project analyzes historical e-commerce transaction data to answer key business questions such as:

* What are the **monthly sales trends**?
* Which **products generate the most revenue**?
* Which **countries contribute the most sales**?
* Who are the **top customers**?
* What patterns exist in **customer purchasing behavior**?

The analysis was performed using **SQL for data cleaning and querying** and **Tableau for visualizations and dashboards**.

---

# 📂 Dataset

**Source:** Kaggle – Online Retail Dataset

The dataset contains transaction records from a **UK-based online retailer between 2010 and 2011**.

### Dataset Features

| Column      | Description                                |
| ----------- | ------------------------------------------ |
| InvoiceNo   | Unique invoice number for each transaction |
| StockCode   | Unique product identifier                  |
| Description | Product description                        |
| Quantity    | Number of items purchased                  |
| InvoiceDate | Date and time of purchase                  |
| UnitPrice   | Price per unit                             |
| CustomerID  | Unique customer identifier                 |
| Country     | Customer's country                         |

---

# 🛠 Tools Used

* **MySQL** – Data cleaning and analysis
* **SQL** – Data transformation and business queries
* **Tableau** – Data visualization and dashboard creation
* **Excel / CSV** – Data storage and preprocessing

---

# 📁 Project Structure

```
online_retail_sql_project
│
├── 1_Data
│   ├── online_retail.csv
│   └── online_retail_cleaned.csv
│
├── 2_SQL
│   ├── 01_create_database_and_table.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_sales_analysis.sql
│   ├── 04_customer_analysis.sql
│   ├── 05_product_performance.sql
│   ├── 06_advanced_analysis.sql
│   └── README.md
│
├── 3_Tableau
│   ├── revenue_by_country.twb
│   ├── monthly_revenue_trend.twb
│   ├── daily_revenue_trend.twb
│   ├── products_sold_in_most_countries.twb
│   ├── top_10_products_by_country.twb
│   ├── total_customers.twb
│   ├── total_orders.twb
│   └── total_revenue.twb
│
├── 4_Visualizations
│   ├── daily_revenue_trend.png
│   ├── monthly_revenue_trend.png
│   ├── products_sold_in_most_countries.png
│   ├── revenue_by_country.png
│   └── top_10_products_by_country.png
│
├── 5_Dashboard
│   ├── dashboard.twb
│   ├── dashboard.png
│   └── README.md
│
└── 6_Reports
    └── Business_Insights.docx
```

---

# 🧹 Data Cleaning Process

Before performing analysis, several data quality issues were addressed.

### Cleaning Steps

* Removed **cancelled transactions** (Invoice numbers starting with "C")
* Removed rows with **missing CustomerID**
* Removed transactions with **negative quantities or prices**
* Standardized **date formats**
* Calculated **Revenue per transaction**
* Removed **duplicate records**

These steps ensured that the dataset was **accurate and reliable for analysis**.

---

# 📈 Key Analyses Performed

## 1️⃣ Sales Trend Analysis

Analyzed monthly revenue to understand sales growth and seasonal trends.

Example metric:

Revenue = Quantity × UnitPrice

This helps identify peak sales periods and potential seasonal demand.

---

## 2️⃣ Top Selling Products

Identified products with the highest:

* Sales volume
* Revenue contribution

These products represent the **core revenue drivers** of the business.

---

## 3️⃣ Revenue by Country

Examined geographic distribution of revenue to determine key markets.

This helps businesses identify **high-value regions for marketing and expansion**.

---

## 4️⃣ Customer Analysis

Identified **top customers based on total spending**.

Understanding customer purchasing behavior helps improve:

* Customer retention
* Loyalty programs
* Targeted marketing

---

## 5️⃣ Product Affinity Analysis

Used **SQL self-joins** to identify products that are frequently purchased together.

This can support:

* Product bundling
* Cross-selling strategies
* Recommendation systems

---

# 📊 Visualizations

The analysis results were visualized using **Tableau**.

Key charts include:

* 📈 Monthly Revenue Trend
* 📊 Revenue by Country
* 🛒 Top 10 Products by Revenue
* 👥 Top Customers by Revenue
* 📅 Daily Sales Trends

Visualization images are stored in:

```
4_Visualizations
```

---

# 📊 Dashboard

An interactive Tableau dashboard was created to present the key findings.

The dashboard includes:

* Sales trends over time
* Geographic revenue distribution
* Product performance insights
* Customer spending analysis

Dashboard files are located in:

```
5_Dashboard
```

---

# 💡 Key Business Insights

The analysis revealed several important patterns:

* A **small group of customers generates a large share of revenue**
* A **few products dominate total sales**
* **Most revenue comes from a limited number of countries**
* Sales show **seasonal patterns during peak shopping periods**

---

# 📌 Business Recommendations

Based on the insights, the following strategies could improve performance:

* Introduce **loyalty programs** for high-value customers
* Bundle **frequently purchased products**
* Focus marketing efforts on **top revenue-generating countries**
* Increase inventory for **high-performing products**
* Use sales trends to **forecast demand**

---

# 🎯 Project Highlights

This project demonstrates several core **data analyst skills**:

* SQL data cleaning and transformation
* Aggregations and business metrics
* Customer and product analysis
* Data visualization with Tableau
* Translating data findings into business insights

---

# 👩‍💻 Author

**Pooja Challa**

Data Analysis Portfolio Project
Tools: **SQL • Tableau • Excel**
