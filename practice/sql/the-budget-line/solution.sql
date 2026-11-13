SELECT
  budget.svc_name AS svc_name,
  budget.region AS region,
  invoices.amount AS actual_cost,
  budget.amount AS budget,
  CASE 
    WHEN invoices.amount > budget.amount THEN 'over'
    WHEN invoices.amount <= budget.amount THEN 'under'
    ELSE 'on_target'
  END AS budget_flag
FROM cloud_costs AS invoices
  INNER JOIN cost_allocs AS budget
  ON (budget.svc_name = invoices.svc_name 
    AND budget.region = invoices.region);
