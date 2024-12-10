-- An sql statement or a state of sql statement that can be stored on db server
-- which can be called no of times

-- Types :  1) Stored Procedure 2) User Defined Func


-- (1) Stored Procedure: Set of sql statements and procedural logic 
--         that can perform operations such as insert, update, delete, etc.

CREATE OR REPLACE PROCEDURE update_emp_salary(
    p_emp_id INT,
    p_new_salary NUMERIC
)

LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employees
    SET salary = p_new_salary
    WHERE emp_id = p_emp_id;
END;
$$;

CALL update_emp_salary(3, 71000); -- calling stored procedure



-- (2) User Defined Func: A function that is defined by the user and can be used in sql statements
--                          to perform calculations and return a result


CREATE OR REPLACE FUNCTION dept_max_sal_emp1(dept_name VARCHAR)

RETURNS TABLE(emp_id INT, fname VARCHAR, salary NUMERIC)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        e.emp_id, e.fname, e.salary
    FROM
        employees e
    WHERE
        e.dept = dept_name
        AND e.salary(
            SELECT MAX(emp.salary)
            FROM employees emp
            WHERE emp.dept = dept_name
        ) ;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM dept_max_sal_emp1('IT');