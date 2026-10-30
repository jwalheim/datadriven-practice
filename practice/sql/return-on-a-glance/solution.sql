SELECT
    ad_campaign,
    COUNT(impression_id) AS impressions,
    SUM(revenue)/COUNT(*) AS avg_revenue_per_impression
FROM ad_impressions
GROUP BY ad_campaign
ORDER BY avg_revenue_per_impression DESC;
