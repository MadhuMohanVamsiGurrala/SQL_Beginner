--cross join
--Display product details and company details
SELECT P.*, C.*
FROM PRODUCT P
JOIN COMPANY C ON P.CMPID = C.CMPID;

--equi join
--Display product name and its company name
SELECT p.pname, c.cmpname
FROM product p
JOIN company c ON p.cmpid = c.cmpid;

--Display tv information along with company name and mfg country
SELECT p.pname, p.price, c.cmpname, c.country
FROM product p, company c
WHERE p.pname LIKE '%tv%' 
AND p.cmpid = c.cmpid;

--Display employee name, salary, desg and his dept name and working location
SELECT e.ename, e.sal, e.job, d.dname, d.loc AS working_at
FROM emp e, dept d
WHERE e.deptno = d.deptno;
