-- Window functions, also known as analytic functions allow 
-- you to perform calculations across a set of rows related to current row

-- OVER()

SELECT fname,
        SUM(salary) OVER(ORDER BY salary)
FROM employees;


SELECT ROW_NUMBER() OVER(), fname, salary
FROM employees;

SELECT fname, salary, RANK() OVER(ORDER BY salary DESC)
FROM employees;