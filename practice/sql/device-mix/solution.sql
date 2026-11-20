SELECT
  device_type,
  os_name,
  COUNT(*) AS device_count
FROM devices
WHERE browser IS NOT NULL
GROUP BY device_type, os_name
HAVING COUNT(*) >= 3;
