SELECT
  token_id,
  issued,
  requests
FROM
  api_tokens
WHERE
  expires IS NULL OR expires >= CURRENT_DATE
ORDER BY
  requests DESC
LIMIT 20;
