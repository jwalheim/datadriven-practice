SELECT 
  log_id,
  LOWER(env_name)
FROM deploy_logs
WHERE 
  LOWER(status) LIKE '%failed%';
