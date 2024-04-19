SELECT 10+20 FROM DUAL;

SELECT  1000-2000*5 FROM DUAL;

SELECT 234*567 + 342*34  FROM DUAL;

SELECT (5*70000)/100 FROM DUAL;

-- Query 1: Retrieve all columns from the "EMP" table
SELECT * FROM EMP;
-- Query 2: Retrieve employee name, salary, bonus (10% of the salary), and total salary plus bonus
SELECT ename, sal, (0.1 * sal) AS bonus, sal + (0.1 * sal) AS total_salary_with_bonus FROM emp;

--find the name of empid 7788
SELECT ENAME FROM EMP WHERE EMPNO = 7788;

--find the job of empid 7839
SELECT JOB FROM EMP WHERE EMPNO = 7839;

--get names of clerks
SELECT ENAME FROM EMP WHERE JOB = 'CLERK';

--identify who is woking in deptno 30
SELECT ENAME FROM EMP WHERE DEPTNO = 30;

--find the details of employee KING
SELECT * FROM EMP WHERE ENAME = 'KING';

--get all manager details
SELECT * FROM EMP WHERE JOB = 'MANAGER';

--display employee details with min salary 2000 and max salary 3000
SELECT * FROM EMP WHERE SAL BETWEEN 2000 AND 3000;

--get employee details with salary below 1000 and above 3000 
SELECT * FROM EMP WHERE SAL NOT BETWEEN 1000 AND 3000;

--get all managers and clerks details
SELECT * FROM EMP WHERE JOB IN ('MANAGER', 'CLERK');

--get the details of tv and ac
SELECT * FROM product WHERE pname IN ('tv', 'ac');



