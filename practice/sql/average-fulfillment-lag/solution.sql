SELECT 
  calculating_avg.user_id,
  AVG(calculating_avg.purchase_age) AS avg_days
FROM (
  SELECT
    user_id,
    JULIANDAY('now') - JULIANDAY(transaction_date) AS purchase_age
  FROM
    transactions
  WHERE
    total_amount > 0
) AS calculating_avg
GROUP BY calculating_avg.user_id
ORDER BY avg_days DESC;
