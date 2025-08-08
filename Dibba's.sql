-- this command is to create the 'mySchool' db 
CREATE SCHEMA mySchool;
-- command to switch to the 'mySchool' db
USE mySchool;
-- command to create the 'PROFESSOR' table
CREATE TABLE PROFESSOR (
PROF_NUM INT NOT NULL UNIQUE,
PROF_SPECIALITY VARCHAR(100) NOT NULL,
PROF_FNAME VARCHAR(45) NOT NULL,
PROF_LNAME VARCHAR(45) NOT NULL,
PROF_EMAIL VARCHAR(100) NOT NULL,
PRIMARY KEY (PROF_NUM)
);

-- COMMAND TO CREATE THE 'SCHOOL' TABLE 
CREATE TABLE SCHOOL (
SCHOOL_CODE INT NOT NULL UNIQUE,
PROF_NUM INT,
SCHOOL_NAME VARCHAR(200) NOT NULL UNIQUE,
PRIMARY KEY (SCHOOL_CODE),
FOREIGN KEY (PROF_NUM) REFERENCES PROFESSOR (PROF_NUM)
);

-- COMMAND TO CREATE THE 'DEPARTMENT' TABLE
CREATE TABLE DEPARTMENT (
DEPT_CODE INT NOT NULL UNIQUE,
SCHOOL_CODE INT,
DEPT_NAME VARCHAR(50) NOT NULL UNIQUE,
PRIMARY KEY (DEPT_CODE),
FOREIGN KEY (SCHOOL_CODE) REFERENCES SCHOOL (SCHOOL_CODE)
);


-- the first to insert 
-- inserting a row into the professor table
INSERT INTO PROFESSOR
VALUES (101, "JAVA", "BOB", "DIBBA", "abubacarrdibba04@gmail.com");

-- inserting a row into the professor table
INSERT INTO PROFESSOR
VALUES (102, "java", "fatoumatta", "dibba", "abubacarrdibba04@gmail.com");
 

-- command to delete row 
DELETE FROM PROFESSOR WHERE PROF_NUM = 101;

-- command to return or select all the data in a table
SELECT * FROM PROFESSOR;

-- command  to return or select a single row in a table
SELECT * FROM PROFESSOR WHERE PROF_NUM = 100;

-- command to delete all rows in the table without deleting the table 
DELETE FROM PROFESSOR;

-- command to delete a table don't run it 
DROP TABLE PROFESSOR;

-- command to add a new columm into a table after creation
ALTER TABLE PROFESSOR
ADD PROF_EMAIL VARCHAR(100);

-- after adding the columm 
-- command to add a value to a new created columm for already existing rows
UPDATE  PROFESSOR
SET PROF_EMAIL = "FATTY"
WHERE PROF_NUM = 102;








 

 
