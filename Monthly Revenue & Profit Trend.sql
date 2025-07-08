SELECT
  DATE_TRUNC('month', date) AS month,
  SUM(revenue) AS monthly_revenue,
  SUM(cost) AS monthly_cost,
  SUM(profit) AS monthly_profit
FROM transactions
GROUP BY DATE_TRUNC('month', date)
ORDER BY month;
