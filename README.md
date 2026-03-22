# 🛒 E-Commerce Sales Analysis using SQL & Tableau

> Analyzing 500,000+ real-world transactions from a UK-based online retailer to uncover revenue trends, top products, customer behavior, and geographic sales patterns.

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=flat-square&logo=tableau&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-217346?style=flat-square&logo=microsoftexcel&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=flat-square)
![Dataset](https://img.shields.io/badge/Dataset-500K%2B_Transactions-blue?style=flat-square)

---

## 📌 Project Overview

This end-to-end data analysis project covers the full analyst workflow:

**Data Cleaning → SQL Analysis → Tableau Visualization → Business Insights**

Using transaction data from a real UK-based online retailer (2010–2011), the project demonstrates practical skills in identifying what drives revenue, who the most valuable customers are, and where to focus business strategy.

---

## 📂 Dataset

**Source:** [Kaggle – Online Retail Dataset](https://www.kaggle.com/datasets/vijayuv/onlineretail)

**Scope:** 500,000+ transactions · UK-based retailer · 2010–2011

| Column | Description |
|--------|-------------|
| `InvoiceNo` | Unique invoice number per transaction |
| `StockCode` | Unique product identifier |
| `Description` | Product name/description |
| `Quantity` | Number of items purchased |
| `InvoiceDate` | Date and time of purchase |
| `UnitPrice` | Price per unit (£) |
| `CustomerID` | Unique customer identifier |
| `Country` | Customer's country |

> **Key derived metric:** `Revenue = Quantity × UnitPrice`

---

## ❓ Business Questions Answered

1. 📈 What are the monthly and daily sales trends?
2. 🏆 Which products generate the most revenue and volume?
3. 🌍 Which countries contribute the most sales?
4. 👥 Who are the top customers by total spending?
5. 🛍️ Which products are frequently bought together?
6. 📅 Are there seasonal patterns in purchasing behavior?

---

## 🧹 Data Cleaning Steps

Raw data had several quality issues — all resolved before analysis:

| Issue | Fix Applied |
|-------|-------------|
| Cancelled transactions | Removed invoices starting with `"C"` |
| Missing CustomerID | Dropped rows with null customer identifiers |
| Negative quantities / prices | Filtered out invalid transaction records |
| Inconsistent date formats | Standardized to `YYYY-MM-DD HH:MM:SS` |
| Duplicate records | Deduplicated using invoice + stockcode |
| Missing revenue column | Computed `Revenue = Quantity × UnitPrice` |

Cleaned dataset saved as `online_retail_cleaned.csv`.

---

## 📁 Repository Structure

```
online_retail_SQL/
│
├── 1_Data/
│   ├── online_retail.csv               # Raw dataset
│   └── online_retail_cleaned.csv       # Cleaned dataset
│
├── 2_SQL/
│   ├── 01_create_database_and_table.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_sales_analysis.sql
│   ├── 04_customer_analysis.sql
│   ├── 05_product_performance.sql
│   └── 06_advanced_analysis.sql
│
├── 3_Tableau/
│   ├── revenue_by_country.twb
│   ├── monthly_revenue_trend.twb
│   ├── top_10_products_by_country.twb
│   └── ...
│
├── 4_Visualizations/
│   ├── monthly_revenue_trend.png
│   ├── revenue_by_country.png
│   ├── top_10_products_by_country.png
│   └── ...
│
├── 5_Dashboard/
│   ├── dashboard.twb
│   └── dashboard.png
│
└── 6_Reports/
    └── Business_Insights.docx
```

---

## ▶️ How to Run the Queries

### Prerequisites
- MySQL 8.0+ (or any MySQL-compatible client)
- The raw dataset downloaded from [Kaggle](https://www.kaggle.com/datasets/vijayuv/onlineretail)

### Steps

**1. Set up the database**
```sql
-- Run first
SOURCE 2_SQL/01_create_database_and_table.sql;
```

**2. Load and clean the data**
```sql
-- Import online_retail.csv into the table, then:
SOURCE 2_SQL/02_data_cleaning.sql;
```

**3. Run the analyses in order**
```sql
SOURCE 2_SQL/03_sales_analysis.sql;       -- Monthly & daily revenue trends
SOURCE 2_SQL/04_customer_analysis.sql;    -- Top customers by spend
SOURCE 2_SQL/05_product_performance.sql;  -- Top products by revenue & volume
SOURCE 2_SQL/06_advanced_analysis.sql;    -- Product affinity / co-purchase analysis
```

**4. Explore the dashboards**

Open any `.twb` file in **Tableau Desktop** or view static charts in `4_Visualizations/`.

---

## 💡 Key Findings

| Finding | Insight |
|---------|---------|
| 📦 **Top products dominate** | A small set of SKUs account for a disproportionately large share of revenue |
| 👑 **High-value customers** | A minority of customers drive the majority of total sales (Pareto effect) |
| 🌍 **UK leads revenue** | The United Kingdom is the single largest market by a wide margin |
| 📅 **Q4 seasonality** | Sales spike significantly in October–November, indicating holiday demand |
| 🛍️ **Product affinity** | Several product pairs are frequently bought together — ideal for bundling |

---

## 📊 Dashboard Preview

> Interactive dashboard built in Tableau covering sales trends, geographic distribution, product performance, and customer spend.

![Dashboard](5_Dashboard/dashboard.png)

---

## 📌 Business Recommendations

Based on the analysis:

- 🎯 **Loyalty programs** — reward the top customer segment driving most revenue
- 📦 **Product bundling** — package frequently co-purchased items together
- 🌍 **Geographic focus** — double down on marketing in the UK and top-performing countries
- 📈 **Inventory planning** — stock up high-performing SKUs ahead of Q4
- 🔮 **Demand forecasting** — use seasonal trends to anticipate peaks and reduce stockouts

---

## 👩‍💻 Author

**Pooja Challa** — Data Analyst · SQL · Tableau · Python

[![GitHub](https://img.shields.io/badge/GitHub-poojachalla--dev-181717?style=flat-square&logo=github)](https://github.com/poojachalla-dev)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-poojachalla-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/poojachalla)
