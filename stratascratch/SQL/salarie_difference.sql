# 1 - Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the absolute difference in salaries.
# Code:
  SELECT ABS(
   MAX(CASE WHEN d.department = 'engineering' THEN e.salary ELSE 0 END) - 
   MAX(CASE WHEN d.department = 'marketing' THEN e.salary ELSE 0 END)
) as diff_max_salaries
FROM db_employee e
JOIN db_dept d ON e.department_id = d.id
WHERE d.department IN ('engineering', 'marketing')

# Output will be:
  diff_max_salaries
  2400
