SELECT 
  LOWER(dl.author) AS author,
  ROUND(AVG(latency),2) as avg_score
FROM deploy_logs AS dl
  JOIN svc_health as sh
  USING (svc_name)
GROUP BY LOWER(dl.author)
ORDER BY avg_score DESC;
