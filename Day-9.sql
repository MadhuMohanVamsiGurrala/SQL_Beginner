--Key Constraints
CREATE TABLE student1 (
    rno INT(3) PRIMARY KEY,
    sname VARCHAR(10) NOT NULL,
    course VARCHAR(10) NOT NULL,
    fee INT(5) NOT NULL,
    phno BIGINT UNIQUE
);

insert into student1 values(1,'a','oracle',5000,9800198001);
insert into student1 values(2,'x','java',1000,9800198002);
insert into student1 values(3,'b','welcome',1000,7897897899);
insert into student1 values(4,'krish','sap',99000,9800198003);
insert into student1 values(5,'sathya','sql',9000,12345123456);

--Domain Constraints
CREATE TABLE student2 (
    rno INT(3) PRIMARY KEY,
    sname VARCHAR(10) NOT NULL,
    course VARCHAR(10) NOT NULL,
    fee INT(5) NOT NULL,
    phno BIGINT(10) UNIQUE,
    CHECK (rno BETWEEN 1 AND 999),
    CHECK (course IN ('oracle', 'java')),
    CHECK (fee BETWEEN 5000 AND 10000),
    CHECK (LENGTH(phno) = 10),
    CHECK (phno LIKE '6%' OR phno LIKE '7%' OR phno LIKE '8%' OR phno LIKE '9%')
);

insert into student2 values(1,'a','oracle',5000,9800198001);
insert into student2 values(-10,'uday','java',6000,9879879871);
insert into student2 values(20,'deva','sap',8000,8908908902);
insert into student2 values(20,'deva','oracle',8000,8908908902);
insert into student2 values(2,'vahini','oracle',10001,null);
insert into student2 values(6,'swathi','java',7000,7896785679);
insert into student2 values(8,'isha','java',9000,5678956789);
insert into student2 values(8,'isha','java',9000,6678956789);

select * from student2;
