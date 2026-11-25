SELECT
  p.category AS category,
  SUM(t.total_amount) AS total_revenue,
  COUNT(t.transaction_id) AS transaction_count
FROM transactions AS t
  JOIN products AS p
  USING (product_id)
GROUP BY p.category
ORDER BY 
  total_revenue DESC,
  transaction_count DESC;
