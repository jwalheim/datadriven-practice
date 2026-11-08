SELECT 
  U.username,
  SUM(A.revenue) AS total_revenue
FROM users AS U JOIN ad_impressions AS A 
  ON U.user_id = A.user_id
WHERE clicked = 1
GROUP BY U.username
ORDER BY total_revenue DESC;
