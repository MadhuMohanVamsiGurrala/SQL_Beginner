--employee details if the employee not working under any manager
SELECT * FROM EMP WHERE MGR IS NULL;

--employees who is not working under any dept
SELECT * FROM EMP WHERE DEPTNO IS NULL;

--employee details if the employee is working under any one dept
SELECT * FROM EMP WHERE DEPTNO IS NOT NULL;

--employee names with 4 characters
SELECT ENAME FROM EMP WHERE ENAME LIKE '____';

--employee names begining with character " S " 
SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%';

--employee names beginning and ending with character " S " 
SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%S';

--employee names except 5 character length names
SELECT ENAME FROM EMP WHERE ENAME NOT LIKE '_____';

--all managers
SELECT * FROM EMP WHERE JOB = 'MANAGER';

--managers with salary minimum 2500
SELECT * FROM EMP WHERE JOB = 'MANAGER' AND SAL >= 2500;

--clerk details who is working under deptno 30
SELECT * FROM EMP WHERE JOB = 'CLERK' AND DEPTNO = 30;

--employe names with 4 characters and 6-character length employee names
SELECT ENAME FROM EMP WHERE ENAME LIKE '____' OR ENAME LIKE '______';



