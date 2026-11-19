SELECT
  a.*,
  u.*
FROM ad_impressions AS a
  LEFT JOIN users AS u
  USING (user_id)
WHERE a.ad_campaign = 'HOLIDAY_PROMO'
ORDER BY a.impression_time;
