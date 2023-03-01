# Question: Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the absolute difference in salaries.

# Databases are "db_employee" and "db_dept". Database "db_employee" has the following columns: "id", "first_name", "last_name", "salary" and "department_id" and "db_dept" database has the columns "id" and "department".

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
