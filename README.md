# Task 6 – Sales Trend Analysis Using SQL

## 📌 Objective
The objective of this task is to analyze sales trends by calculating **monthly revenue** and **order volume** using SQL aggregation functions.

---

## 🛠 Tool Used
- SQLite (Online SQL Compiler – sqliteonline.com)

---

## 📂 Dataset Description
Table Name: `orders`

Columns:
- order_id – Unique identifier for each order
- order_date – Date of the order
- product_id – Product identifier
- amount – Order amount

---

## 🔍 Analysis Performed

### 1️⃣ Monthly Revenue Analysis
- Calculated total revenue for each month using `SUM(amount)` and `GROUP BY`.

### 2️⃣ Monthly Order Volume
- Calculated the number of unique orders per month using `COUNT(DISTINCT order_id)`.

### 3️⃣ Combined Revenue and Order Volume
- Analyzed both metrics together to understand sales performance across months.

### 4️⃣ Top 3 Months by Revenue
- Identified the top-performing months using `ORDER BY` and `LIMIT`.

---

## 📈 Key Insights
- Sales increased steadily from January to March.
- March recorded the highest monthly revenue.
- Order volume remained consistent across months.
- Revenue trends indicate improved sales performance over time.

---

## 📁 Files Included
| File | Description |
|------|------------|
| task6_sales_trend.sql | SQL queries used for analysis |
| screenshots/ | Query execution screenshots |
| README.md | Project documentation |

---

## ✅ Conclusion
This task demonstrates the effective use of SQL aggregation functions to analyze sales trends and derive meaningful business insights.

---

