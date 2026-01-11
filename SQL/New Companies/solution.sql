SELECT e.company_code, c.founder ,COUNT(DISTINCT lead_manager_code), COUNT(DISTINCT senior_manager_code), COUNT(DISTINCT manager_code ),
COUNT(distinct employee_code) FROM Employee e LEFT JOIN Company c ON e.company_code=c.company_code GROUP BY e.company_code,c.founder Order BY e.company_code;



Note - Every column in the SELECT list must either:
Be inside an aggregate function (COUNT, SUM, MAX, etc.)
OR Appear in the GROUP BY clause