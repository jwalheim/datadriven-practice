SELECT
  err_id,
  message,
  svc_name,
  CASE 
      WHEN LENGTH(message) < 30 THEN 'short'
      WHEN LENGTH(message) BETWEEN 30 AND 31 THEN 'mid'
      ELSE 'long'
  END AS length_category
FROM err_tracks
WHERE LENGTH(message) > 29
  AND severity IN ('Fatal','fatal')
  AND message IS NOT NULL;
