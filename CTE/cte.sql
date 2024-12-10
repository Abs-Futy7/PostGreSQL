-- CTE(Common Table Expression): a temp result set that you can define
-- within a query t simplify complex SQL statements


--case1: we want to calculate the avg salary per dept and then find all
--       employees with salary greater than avg salary per dept

WITH avg_sal AS(
    SELECT dept, AVG(salary) as avg_salary 
    FROM employees GROUP BY dept
)

SELECT
    e.emp_id, e.fname, e.dept, e.salary, a.avg_salary
FROM employees e
JOIN
    avg_sal ON e.dept = a.dept
    WHERE e.salary > a.avg_salary;