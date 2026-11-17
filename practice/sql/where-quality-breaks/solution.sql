SELECT 
    tbl_name,
    count(*) AS failed_checks,
    count(DISTINCT rule) AS distinct_rules,
    AVG(fail_pct) AS avg_fail_pct
FROM dq_checks
WHERE passed = 'false'
GROUP BY tbl_name
HAVING AVG(fail_pct) > 30
ORDER BY avg_fail_pct DESC;
