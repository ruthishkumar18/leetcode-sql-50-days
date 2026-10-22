# Day 37. Employees Whose Manager Left the Company

We must find employees who:
1. Earn less than 30000.
2. Have a manager whose record no longer exists in the Employees table.

If a manager leaves the company, their row is deleted but the employees still retain the same manager_id.

Return the employee_id of such employees in ascending order.
