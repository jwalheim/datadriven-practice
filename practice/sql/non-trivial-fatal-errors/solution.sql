WITH updated_table AS (
  SELECT 
    err_id,
    severity,
    svc_name,
    message,
    LENGTH(message) AS message_length,
    CASE 
      WHEN LENGTH(message) < 30 THEN 'short'
      WHEN LENGTH(message) BETWEEN 30 AND 31 THEN 'mid'
      ELSE 'long'
  END AS length_category
  FROM err_tracks
  WHERE message IS NOT NULL
)
  

SELECT
  err_id,
  message,
  svc_name,
  length_category
FROM updated_table
WHERE length_category IN ('mid','long')
  AND severity IN ('Fatal','fatal');
