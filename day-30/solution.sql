SELECT M.employee_id,
       M.name,
       COUNT(E.employee_id) AS reports_count,
       ROUND(AVG(E.age)) AS average_age
FROM Employees M
JOIN Employees E
ON M.employee_id = E.reports_to
GROUP BY M.employee_id, M.name
ORDER BY M.employee_id;
