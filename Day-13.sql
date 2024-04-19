--In which dept employee SMITH is working
SELECT DNAME
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME = 'SMITH');

--Get employee names from the dept ACCOUNTING
SELECT ENAME
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME = 'ACCOUNTING');

--Get manager details from SALES dept
SELECT *
FROM EMP
WHERE JOB = 'MANAGER'
AND DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME = 'SALES');

--find out product names sold to customer UDAY
SELECT pname
FROM product
WHERE pid IN (
    SELECT pid
    FROM orders
    WHERE cid = (
        SELECT cid
        FROM customers
        WHERE cname = 'uday'
    )
);


