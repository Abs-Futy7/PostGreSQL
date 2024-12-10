--Use case: create a trigger so that if we insert/update negative salary
--          in a table it will be triggered and set it to 0

CREATE TRIGGER check_salary
BEFORE INSERT OR UPDATE ON employees
FOR EACH ROW
WHEN (NEW.salary < 0)
BEGIN
    SET NEW.salary = 0;
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Negative salary is not allowed';
END;