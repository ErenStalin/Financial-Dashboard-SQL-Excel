# 📊 Financial Dashboard – SQL + Excel

## 📁 Project Summary
This project demonstrates financial analysis using SQL for data extraction and Microsoft Excel for dashboard creation. 
It includes key business and financial metrics such as revenue, cost, profit margin, and monthly sales trends.

## 🧠 Tools Used
- PostgreSQL
- Microsoft Excel
- Git & GitHub

## 📌 Key Metrics Analyzed
- Total Revenue, Cost & Profit
- Monthly Revenue Trend
- Product-wise Revenue
- City-wise Profit
- Customer Segmentation by Spending

## 💻 How It Works
1. Used dummy datasets simulating real-world sales: customers, products, transactions.
2. Wrote SQL queries to calculate business KPIs (revenue, profit, etc.).
3. Exported query results and built an interactive Excel dashboard.
4. Analyzed trends across months, customer segments, and product categories.
5. Structured everything in a GitHub repository for recruiters and learning purposes.

## 📎 Sample SQL Queries
```sql
-- Monthly revenue and profit
SELECT DATE_TRUNC('month', date) AS month,
       SUM(revenue) AS revenue,
       SUM(profit) AS profit
FROM transactions
GROUP BY month
ORDER BY month;

-- Top products by revenue
SELECT p.product_id, p.category, SUM(t.revenue) AS revenue
FROM transactions t
JOIN products p ON t.product_id = p.product_id
GROUP BY p.product_id, p.category
ORDER BY revenue DESC
LIMIT 5;
```

## 🔗 Live Demo / Repo
- GitHub: https://github.com/ErenStalin/Financial-Dashboard-SQL-Excel
