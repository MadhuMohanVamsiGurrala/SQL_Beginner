--creating company and product tables
CREATE TABLE company1 (
    cmpid VARCHAR(10) PRIMARY KEY,
    cmpname VARCHAR(20) NOT NULL,
    address VARCHAR(15) NOT NULL
);

INSERT INTO company1 VALUES ('cmp1', 'tata', 'india');
INSERT INTO company1 VALUES ('cmp2', 'sony', 'japan');
INSERT INTO company1 VALUES ('cmp3', 'wipro', 'india');
INSERT INTO company1 VALUES ('cmp4', 'samsung', 'south korea');

CREATE TABLE product1 (
    pid VARCHAR(5) PRIMARY KEY,
    pname VARCHAR(14) NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    cmpid VARCHAR(10),
    CONSTRAINT FK_cmpid_Product1 FOREIGN KEY (cmpid) REFERENCES company1(cmpid)
);

INSERT INTO product1 VALUES ('p1', 'tv', 65000, 'cmp2');
INSERT INTO product1 VALUES ('p2', 'shampoo', 650, 'cmp3');
INSERT INTO product1 VALUES ('p3', 'speakers', 15000, 'cmp2');
INSERT INTO product1 VALUES ('p4', 'led tv', 50000, 'cmp4');
INSERT INTO product1 VALUES ('p5', 'ac', 42000, 'cmp1');
INSERT INTO product1 VALUES ('p6', 'water filter', 9500, 'cmp1');