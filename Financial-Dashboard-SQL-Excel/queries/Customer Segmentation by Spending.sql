SELECT
  customer_id,
  SUM(revenue) AS total_spent,
  CASE
    WHEN SUM(revenue) >= 10000 THEN 'High Value'
    WHEN SUM(revenue) BETWEEN 5000 AND 9999 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS customer_segment
FROM transactions
GROUP BY customer_id
ORDER BY total_spent DESC;
