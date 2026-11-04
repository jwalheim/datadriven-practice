SELECT 
  users.user_id AS user_id,
  users.username,
  SUM(transactions.total_amount) AS lifetime_spend
FROM
  users JOIN transactions ON users.user_id = transactions.user_id
GROUP BY users.user_id, users.username
ORDER BY lifetime_spend DESC
LIMIT 10;
