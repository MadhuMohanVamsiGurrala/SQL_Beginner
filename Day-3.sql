-- Creating table
CREATE TABLE myemps (
    empid INT(4),
    ename VARCHAR(20),
    salary INT(6),
    desg VARCHAR(10),
    joindt DATE
);

--Inserting data into table
INSERT INTO myemps VALUES(1010,'vijay',50000,'developer','2023-06-20');
INSERT INTO myemps VALUES(1001,'keerthana',55000,'developer','2023-01-14');
--Inserting limited values
insert into myemps values(NULL,'venkat',45000,'developer',NULL);
insert into myemps values(1122,'nancy',45000,'manager',NULL);
insert into myemps(ename,desg) values('sathya','admin');
insert into myemps(empid,ename) values(1221,'sravani');

--retrieving table data
SELECT * FROM myemps;


