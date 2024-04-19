--inner join
--Display employee names and their dept names
SELECT e.ename, d.dname
FROM emp e
INNER JOIN dept d ON e.deptno = d.deptno;

--display customer details and his order details
SELECT c.*, o.*
FROM customers c
INNER JOIN orders o ON c.cid = o.cid;

--display customer name, order no, product name and its company name
SELECT C.CNAME, O.ORDERNO, P.PNAME, CMP.CMPNAME
FROM CUSTOMERS C
INNER JOIN ORDERS O ON C.CID = O.CID
INNER JOIN PRODUCT P ON O.PID = P.PID
INNER JOIN COMPANY CMP ON P.CMPID = CMP.CMPID;


--self join
--get employee details from a dept where employee smith is working
SELECT e2.*
FROM emp e1, emp e2
WHERE e1.ename = 'SMITH' AND e1.deptno = e2.deptno;

--Get employee details who is working like martin
SELECT e2.*
FROM emp e1, emp e2
WHERE e1.ename = 'MARTIN' AND e1.job = e2.job;

--Display customer details and his order no, date
SELECT c.*, o.orderno, o.orderdt
FROM customers c
LEFT JOIN orders o ON c.cid = o.cid;

--display all registered customers. And also if any customer make an order then display his orderno and orderdt
SELECT c.*, o.orderno, o.orderdt
FROM customers c
LEFT OUTER JOIN orders o ON c.cid = o.cid;



