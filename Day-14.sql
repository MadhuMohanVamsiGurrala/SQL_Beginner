--Find out total salary?
SELECT SUM(sal) FROM emp;

--Find out average salary of a manager
SELECT AVG(sal) FROM emp WHERE job = 'MANAGER';

--Find out least salary in clerk category
SELECT MIN(sal) FROM emp WHERE job = 'CLERK';

--Find the highest salary in RESEARCH dept
SELECT MAX(sal) FROM emp
WHERE deptno = (SELECT deptno FROM dept WHERE dname = 'RESEARCH');

--Find out number of emps with commission
SELECT COUNT(comm) FROM emp;

--Find out number of emps
SELECT COUNT(*) FROM emp;

--find out number of emps from each deptno
SELECT deptno, COUNT(*) FROM emp GROUP BY deptno;

--find out number of emps from each job category
SELECT job, COUNT(*) FROM emp GROUP BY job;

--find the highest salary from each job category
SELECT job, MAX(sal) FROM emp GROUP BY job;
