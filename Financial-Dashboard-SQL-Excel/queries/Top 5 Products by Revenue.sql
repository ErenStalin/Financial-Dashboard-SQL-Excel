SELECT
  p.product_id,
  p.category,
  SUM(t.revenue) AS total_revenue
FROM transactions t
JOIN products p ON t.product_id = p.product_id
GROUP BY p.product_id, p.category
ORDER BY total_revenue DESC
LIMIT 5;
