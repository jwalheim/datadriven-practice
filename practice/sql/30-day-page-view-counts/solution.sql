SELECT 
  user_id,
  count(view_id)
 FROM page_views
 WHERE viewed_at BETWEEN '2025-01-01 00:00:00' AND '2025-12-28 23:59:59'
 GROUP BY user_id;
