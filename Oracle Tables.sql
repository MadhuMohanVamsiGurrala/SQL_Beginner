CREATE TABLE DEPT (
    DEPTNO INT(2),
    DNAME VARCHAR(14),
    LOC VARCHAR(13)
);

Insert into DEPT (DEPTNO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
Insert into DEPT (DEPTNO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
Insert into DEPT (DEPTNO,DNAME,LOC) values (30,'SALES','CHICAGO');
Insert into DEPT (DEPTNO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');

SELECT * FROM DEPT;

--  DDL for Index PK_DEPT
CREATE UNIQUE INDEX PK_DEPT ON DEPT (DEPTNO);

--  Constraints for Table DEPT
ALTER TABLE DEPT ADD CONSTRAINT PK_DEPT PRIMARY KEY (DEPTNO);

--  DDL for Table EMP
CREATE TABLE EMP (
    EMPNO INT(4),
    ENAME VARCHAR(10),
    JOB VARCHAR(9),
    MGR INT(4),
    HIREDATE DATE,
    SAL DECIMAL(7,2),
    COMM DECIMAL(7,2),
    DEPTNO INT(2)
);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,'SMITH','CLERK',7902,'1980-12-17',800,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,'JONES','MANAGER',7839,'1981-04-02',2975,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,null,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,'CLARK','MANAGER',7839,'1981-06-09',2450,null,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,'KING','PRESIDENT',null,'1981-11-17',5000,null,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,'ADAMS','CLERK',7788,'1987-05-23',1100,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,'JAMES','CLERK',7698,'1981-12-03',950,null,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,'FORD','ANALYST',7566,'1981-12-03',3000,null,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,'MILLER','CLERK',7782,'1982-01-23',1300,null,10);

--  DDL for Index PK_EMP
CREATE UNIQUE INDEX PK_EMP ON EMP (EMPNO);

--  Constraints for Table EMP
ALTER TABLE EMP ADD CONSTRAINT PK_EMP PRIMARY KEY (EMPNO);

--  Ref Constraints for Table EMP
ALTER TABLE EMP ADD CONSTRAINT FK_DEPTNO FOREIGN KEY (DEPTNO) REFERENCES DEPT (DEPTNO);

CREATE TABLE company (
    cmpid VARCHAR(10) PRIMARY KEY,
    cmpname VARCHAR(20) NOT NULL,
    country VARCHAR(20) NOT NULL
);

INSERT INTO company VALUES ('cmp1', 'sony', 'japan');
INSERT INTO company VALUES ('cmp2', 'tata', 'india');
INSERT INTO company VALUES ('cmp3', 'wipro', 'india');
INSERT INTO company VALUES ('cmp4', 'samsung', 'south korea');

CREATE TABLE product (
    pid VARCHAR(10) PRIMARY KEY,
    pname VARCHAR(20) NOT NULL,
    price DECIMAL(9,2) NOT NULL,
    mfgdt DATE NOT NULL,
    warranty VARCHAR(10),
    cmpid VARCHAR(10),
    CONSTRAINT fk_cmpid_product FOREIGN KEY (cmpid) REFERENCES company (cmpid)
);

INSERT INTO product VALUES
('p1', 'tv', 50000, '2022-10-12', '3 years', 'cmp1'),
('p25', 'oven', 15000, '2023-02-25', '4 years', 'cmp1'),
('p2', 'water filter', 12000, '2022-10-20', '2 years', 'cmp2'),
('p10', 'bt speakers', 25000, '2022-11-12', '2 years', 'cmp4'),
('p20', 'baby shampoo', 345, '2023-05-24', '1 year', 'cmp3'),
('p11', 'soap', 68, '2023-04-23', '6 months', 'cmp3'),
('p22', 'ac', 45000, '2022-12-26', '10 years', 'cmp4'),
('p5', 'ac', 40000, '2023-01-01', '5 years', 'cmp2'),
('p15', 'laptop', 65000, '2023-03-10', '1 year', 'cmp4'),
('p3', 'oled tv', 99000, '2022-12-19', '3 years', 'cmp1');

CREATE TABLE customers (
    cid VARCHAR(10) PRIMARY KEY,
    cname VARCHAR(14) NOT NULL,
    phno BIGINT(10),
    CONSTRAINT uk_phno_customers UNIQUE (phno)
);

INSERT INTO customers VALUES ('c101', 'harini', 8900189001);
INSERT INTO customers VALUES ('c201', 'ajay', 9800198001);
INSERT INTO customers VALUES ('c110', 'uday', 7890178901);
INSERT INTO customers VALUES ('c1', 'deva', 8988089880);
INSERT INTO customers VALUES ('c10', 'isha', 8979695949);
INSERT INTO customers VALUES ('c2', 'teja', 8000980009);
INSERT INTO customers VALUES ('c12', 'vijay', NULL);
INSERT INTO customers VALUES ('c4', 'jay', NULL);
INSERT INTO customers VALUES ('c3', 'arya', 7890178902);

CREATE TABLE orders (
    orderno INT(10) PRIMARY KEY,
    orderdt DATE NOT NULL,
    qty INT(4) NOT NULL,
    payment DECIMAL(9,2) NOT NULL,
    cid VARCHAR(10),
    pid VARCHAR(10),
    CONSTRAINT fk_cid_orders FOREIGN KEY (cid) REFERENCES customers (cid),
    CONSTRAINT fk_pid_orders FOREIGN KEY (pid) REFERENCES product (pid)
);

INSERT INTO orders VALUES
(10200111, CURDATE() - INTERVAL 5 DAY, 1, 12000, 'c101', 'p2'),
(10200125, CURDATE() - INTERVAL 2 DAY, 1, 50000, 'c201', 'p1'),
(10200110, CURDATE(), 1, 25000, 'c110', 'p10'),
(10200001, CURDATE() - INTERVAL 10 DAY, 1, 65000, 'c110', 'p15');

COMMIT;


