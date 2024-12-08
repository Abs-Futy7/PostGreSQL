SELECT fname, salary,
CASE                                        -- case statement
    WHEN salary < 50000 THEN 'Low Salary'   -- if salary is less than 50000
    ELSE 'High Salary'
END AS salary_status                        -- END AS means creating a new col with name salary_status
FROM employees;




-- giving bonus based on salary

SELECT fname, salary,
CASE 
    WHEN salary > 0 THEN Round(salary*0.1) -- if salary is greater than 0 then give 10% bonus
END AS bonus
FROM employees;