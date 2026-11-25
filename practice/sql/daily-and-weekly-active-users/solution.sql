SELECT 
  CAST(session_start AS DATE) AS day,
  COUNT(DISTINCT user_ID) AS dau
FROM user_sessions
GROUP BY day
ORDER BY day ASC;
