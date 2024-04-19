--round 
select round(2341.23356234,2) from dual;

select round(2341.23356234,0) from dual;

select round(2341.23356234,4) from dual;

select round(2341.23356234,-2) from dual;

--substr
select substr('oracle',1,3) from dual;

select substr('oracle',2,5) from dual;

select substr('oracle',2,3) from dual;

select substr('ahrt7329in',1,3) from dual;

select substr('ahrt7329in',-3,3) from dual;

--lpad
select lpad('welcome',10,'*') from dual;

select lpad(substr('4053 2397 4578',-4,4),14,'#') from dual;

--rpad
select rpad(substr('9866872919',1,4),10,'.') from dual;

--sysdate
SELECT SYSDATE();

--localtimestamp
SELECT LOCALTIMESTAMP();

--current_timestamp
select current_timestamp from dual;

--to_char(datevalue,'char format')
SELECT DATE_FORMAT(NOW(), '%W');
