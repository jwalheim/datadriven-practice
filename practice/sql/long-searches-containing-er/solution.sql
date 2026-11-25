-- Select all columns
SELECT *

-- Select the "search_queries" table
FROM search_queries

-- filter by row
WHERE 
  -- use "CHARINDEX" to search for records that
  -- contain the letter 'm' (results without an
  -- 'm' will return '0', so we want all results
  -- that have a CHARINDEX value not equal to 0)
  -- Also, we normalize by using LOWER
  CHARINDEX('m',LOWER(search_term)) <> 0
  
  -- Filter to show records with "search_term"
  -- lengts greater than 12
  AND LENGTH(search_term) > 12;
