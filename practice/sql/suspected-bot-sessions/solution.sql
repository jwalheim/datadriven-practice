SELECT
  session_id,
  user_id,
  session_duration_sec
FROM user_sessions
WHERE session_duration_sec < 100 AND substring(session_start,1,4)='2026';
