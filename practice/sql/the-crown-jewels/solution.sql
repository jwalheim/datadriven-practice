SELECT p.product_name AS product_name,
  SUM(t.total_amount) AS total_revenue
FROM products AS p
  INNER JOIN transactions AS t
  USING(product_id)
GROUP BY p.product_ID, p.product_name
ORDER BY total_revenue DESC
LIMIT 5;
