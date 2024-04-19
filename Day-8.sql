--renaming student table to std
RENAME TABLE student TO std;
SELECT * FROM student;

--delete data from table
DELETE FROM std;
SELECT * FROM std;
ROLLBACK;
SELECT * FROM std;

--delete data permanently
TRUNCATE TABLE std;
SELECT * FROM std;

--delete table
DROP TABLE std;

--creating student table again for alter command
CREATE TABLE student (
    rno INT(2),
    sname VARCHAR(10),
    gender VARCHAR(1)
);
INSERT INTO student VALUES (1, 'harini', 'F');
INSERT INTO student VALUES (2, 'sathya', 'M');
INSERT INTO student VALUES (3, 'dinesh', 'M');
SELECT * FROM student;

--add a column
ALTER TABLE student
ADD COLUMN phno INT(10);
SELECT * FROM student;

--delete a column
ALTER TABLE student
DROP COLUMN gender;
SELECT * FROM student;

--change column name
ALTER TABLE student
RENAME COLUMN phno TO contact_no;
SELECT * FROM student;

--change table name
ALTER TABLE student
RENAME TO stdinfo;
SELECT * FROM student;

--change data type/ size of a column
ALTER TABLE stdinfo
MODIFY COLUMN contact_no CHAR(14);
SELECT * FROM stdinfo;
