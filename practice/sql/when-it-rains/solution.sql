SELECT
  err_id,
  err_type,
  message,
  svc_name,
  severity,
  count,
  first_at
FROM (
  SELECT 
    err_id,
    err_type,
    message,
    svc_name,
    severity,
    count,
    first_at,
    CASE WHEN CHARINDEX('Error',err_type) != 0 THEN 1 ELSE 0 END +
    CASE WHEN CHARINDEX('null',message) != 0 THEN 1 ELSE 0 END +
    CASE WHEN CHARINDEX('api',svc_name) != 0 THEN 1 ELSE 0 END +  
    CASE WHEN severity IN ('error','ERROR') THEN 1 ELSE 0 END AS num_flags
    FROM err_tracks) AS phantom_table
WHERE num_flags > 1;
