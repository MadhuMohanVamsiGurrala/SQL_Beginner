--Retrieve all tables 
SHOW TABLES;

--Retrieving data from Oracle Tables
SELECT * FROM EMP; 

-- INCREASING LINE SIZE(these are not mysql commands)
SET LINESIZE 200;
SELECT * FROM EMP;

--INCREASING PAGE SIZE(these are not mysql commands)
SET PAGESIZE 100;
SELECT * FROM EMP;

--Retrieving job columns
SELECT JOB FROM EMP;

-- DISPLAY WIHTOUT DUPLICATE VALUES
SELECT DISTINCT JOB FROM EMP;

--Retrieving sal column
SELECT SAL FROM EMP;

--DISPLAY SALARY IN ASCEDING ORDER
SELECT SAL FROM EMP ORDER BY SAL;

--DISPLAY SALARY IN DESCEDING ORDER
SELECT SAL FROM EMP ORDER BY SAL DESC;

SELECT * FROM EMP ORDER BY DEPTNO;

--DISPLAY ENAME FROM A TO Z
SELECT ENAME FROM EMP ORDER BY ENAME;

--DISPLAY ENAME FROM Z TO A
SELECT ENAME FROM EMP ORDER BY ENAME DESC;

--DISPLAY HIGHEST SALARIED EMP TO LOWEST SALARIED EMPLOYEE 
SELECT * FROM EMP ORDER BY SAL DESC;