--change smith salary as 1800
UPDATE EMP SET SAL = 1800 WHERE ENAME = 'SMITH';

--increase all employee salaries with 10%
UPDATE EMP SET SAL = SAL + (10 * SAL) / 100;
SELECT * FROM EMP;

--DELETE JOINDATE AND SALARY OF EMPLOYEE KING
UPDATE EMP 
SET HIREDATE = NULL,
    SAL = NULL
WHERE ENAME = 'KING';
SELECT * FROM EMP;

--delete the details of employee smith
DELETE FROM EMP WHERE ENAME = 'SMITH';
SELECT * FROM EMP;

--DELETE ALL MANAGER DETAILS
DELETE FROM EMP WHERE JOB = 'MANAGER';
SELECT * FROM EMP;

--created a new table for TCL Commands
CREATE TABLE student (
    rno INT(2),
    sname VARCHAR(10)
);
INSERT INTO student VALUES (1, 'harini');
INSERT INTO student VALUES (2, 'sathya');
INSERT INTO student VALUES (3, 'dinesh');
SELECT * FROM student;
DELETE FROM student;
ROLLBACK;
COMMIT;