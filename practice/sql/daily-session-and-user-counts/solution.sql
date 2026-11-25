SELECT 
  CAST(session_start AS DATE) AS session_date,
  COUNT(session_id) AS total_sessions,
  COUNT(DISTINCT user_id) AS unique_users
FROM user_sessions
GROUP BY CAST(session_start AS DATE)
ORDER BY session_date ASC;
