---Chapter 8 - DDL 

---CREATE TABLE

ROLLBACK




CREATE TABLE EMP1
(ID NUMBER(2) PRIMARY KEY
 ,id2  NUMBER(2) UNIQUE
 ,id3 NUMBER(2))


INSERT INTO emp1
VALUES (1,1,1)



INSERT INTO emp1
VALUES (1,2,0)


INSERT INTO emp1
VALUES (2,1,0)


DROP TABLE EMP1



CREATE TABLE dep
(depid NUMBER(4) CONSTRAINT dep_id_pk PRIMARY KEY
 ,depname VARCHAR2(25) CONSTRAINT dep_name_nn NOT NULL)


INSERT INTO dep
VALUES (10,'IT')


INSERT INTO dep
VALUES (10,'HR')


INSERT INTO dep
VALUES (NULL,'IT')



INSERT INTO dep
VALUES (20,NULL)


INSERT INTO dep
VALUES (20,'HR')


INSERT INTO dep
VALUES (30,'QA')


SELECT * FROM dep


CREATE TABLE emp1
(empid NUMBER(4) CONSTRAINT emp_id_pk PRIMARY KEY
 , empname VARCHAR2(25) NOT NULL,
  birthdate DATE,
  hiredate DATE DEFAULT SYSDATE,
  salary NUMBER(8,2) CONSTRAINT emp_sal_ck CHECK(salary >=10000),
  Email VARCHAR2(50),
  depid NUMBER(4) CONSTRAINT emp_depid_fk   REFERENCES dep(depid),
  constraint EMP1_email_uk UNIQUE (Email)
  ,CONSTRAINT emp_email_ck CHECK (email LIKE '%@%') )
--  ,CONSTRAINT emp_depid_fk FOREIGN KEY (depid) REFERENCES dep(depid)
  
  
  DROP TABLE emp1
  

  CREATE TABLE emp1
(empid NUMBER(4) CONSTRAINT emp_id_pk PRIMARY KEY
 , empname VARCHAR2(25) NOT NULL,
  birthdate DATE,
  hiredate DATE DEFAULT SYSDATE,
  salary NUMBER(8,2) CONSTRAINT emp_sal_ck CHECK(salary >=10000),
  Email VARCHAR2(50),
  depid NUMBER(4) ----CONSTRAINT emp_depid_fk   REFERENCES dep(depid),
  ,constraint EMP1_email_uk UNIQUE (Email)
  ,CONSTRAINT emp_email_ck CHECK (email LIKE '%@%') 
 ,CONSTRAINT emp_depid_fk FOREIGN KEY (depid) REFERENCES dep(depid))
 
 
 
 insert into emp1
 VALUES(1,'A',NULL,DEFAULT,15000,'a@gmail.com',10)
  
  
  select * from EMP1
  
  
   insert into emp1
 VALUES(1,'B',NULL,DEFAULT,15000,'B@gmail.com',10)
 
 
  insert into emp1
 VALUES(2,'B',NULL,'01-jan-03',5000,'b@gmail.com',10)
 
 
   insert into emp1
 VALUES(2,'B',NULL,'01-jan-03',25000,'a@gmail.com',10)
  
  
    insert into emp1
 VALUES(2,'B',NULL,'01-jan-03',25000,'bgmail.com',10)
 
 
   insert into emp1
 VALUES(2,'B',NULL,'01-jan-03',25000,'b@gmail.com',50)
 
    insert into emp1
 VALUES(2,'B',NULL,'01-jan-03',25000,'b@gmail.com',30)
 
 
    insert into emp1
 VALUES(3,'c',NULL,'01-jan-03',25000,'c@gmail.com',null)
 
 
 select * from emp1
 
 
 DELETE FROM dep
 WHERE depid =10
 
 ALTER TABLE emp1
 ADD email2 VARCHAR2(50) CONSTRAINT emp1_email_ck CHECK (email2 LIKE '%@%')
 
 ALTER TABLE emp1
 drop CONSTRAINT emp1_email_ck
 
 ALTER TABLE emp1
 ADD CONSTRAINT emp_email_ck CHECK (email2 LIKE '%@%')
 
 
  ALTER TABLE emp1
 ADD CONSTRAINT emp1_email_ck CHECK (email2 LIKE '%@%')
 
 
 
 ALTER TABLE emp
 ADD email1 varchar2(25)
 
 
 
  ALTER TABLE emp
 ADD email2 varchar2(25)
 
 ALTER TABLE emp
 ADD CONSTRAINT em_emai12_uk UNIQUE(email1,email2)
 
 select * from emp
 
 
 UPDATE emp
 SET email1 = 'a', email2='a'
 WHERE id = 100
 
 
  UPDATE emp
 SET email1 = 'a', email2='b'
 WHERE id = 101
 
 
 UPDATE emp
 SET email1 = 'b', email2='a'
 WHERE id = 102
 
 
 UPDATE emp
 SET email1 = 'a', email2='a'
 WHERE id = 104
 
 
 
 alter table emp
 DROP CONSTRAINT  em_emai12_uk
 
 
 ALTER TABLE emp
 DROP COLUMN email2
 
 
 select * from emp
 
 
 TRUNCATE TABLE emp
 
 
 rollback
 
 
 
 
 
 