SELECT 
  CASE WHEN ack_by IS NOT NULL THEN ack_by
        ELSE 'unassigned' END AS responder,
  COUNT(*) AS alert_count
FROM alert_events
GROUP BY responder;
