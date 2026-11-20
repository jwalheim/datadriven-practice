-- Select the columns we want, in this case:
   -- device_type, os_name, and the count of each device
SELECT
  device_type,
  os_name,
  -- IMPORTANT NOTE: we can use COUNT(*) here, because
    -- we have filtered out the NULL values in our "WHERE" 
    -- statement below. If we do not have the WHERE, we would
    -- instead need to specificy the field, so that the null values 
    -- would not be included, i.e. use COUNT(browser),
    -- if WHERE statement is not included
  COUNT(*) AS device_count
FROM devices

-- Filter out NULL VALUES in "broswer" field:
WHERE browser IS NOT NULL

-- Ensure output is organized by device_type & os_name
GROUP BY device_type, os_name
HAVING COUNT(*) >= 3;
