--Department Table:
CREATE TABLE poojan_Department
(
	id INT NOT NULL PRIMARY KEY,
	Department_Name VARCHAR(20) NOT NULL,
	Department_Description VARCHAR(200) NOT NULL,
)

--Insert data into Department Table
INSERT INTO poojan_Department VALUES ('01','.Net Developer','The .NET Framework (pronounced as "dot net") is a proprietary software framework developed by Microsoft that runs primarily on Microsoft Windows.');
INSERT INTO poojan_Department VALUES ('02','Java Developer','Java is a popular programming language. Java is used to develop mobile apps, web apps, desktop apps, games and much more.');
INSERT INTO poojan_Department VALUES ('03','Angular Developer','Angular is a platform for building mobile and desktop web applications.');
INSERT INTO poojan_Department VALUES ('04','React Developer','React is a free and open-source front-end JavaScript library for building user interfaces based on UI components. ');
INSERT INTO poojan_Department VALUES ('05','Node Developer','Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that runs on the V8 engine ');

--Show Department Table data
SELECT * FROM poojan_Department;


--Employee Table
CREATE TABLE poojan_employee 
(
	EmpId INT NOT NULL PRIMARY KEY,
	FirstName VARCHAR(15) ,
	LastName VARCHAR(15),
	City VARCHAR(20),
	MobileNumber INT NOT NULL,
	Gender VARCHAR(7) NOT NULL,
	--Foreign Key Department Table
	Department INT NOT NULL,
	FOREIGN KEY (Department) REFERENCES poojan_Department(id),
	Email VARCHAR(15) NOT NULL,
	Adress VARCHAR(100) ,
	Age INT,
	UserName VARCHAR(15) NOT NULL,
	Emp_Password VARCHAR(10) NOT NULL UNIQUE,
	Emp_Confirm_Password VARCHAR(10) NOT NULL UNIQUE
);


--Insert Data into Employee Table
INSERT INTO poojan_employee  values('101','Poojan','Patel','Vadodara','987654321','Male','04','poojan@gmail','C-304,Rudhraksh Flats,Vadoadara','22','poojan@3037','poojan123','poojan123');
INSERT INTO poojan_employee  values('102','Smit','Patel','Mehasana','987651234','Male','03','smit@gmail','A-Shiv Society,Mehsana','24','smit@3037','smit123','smit123');
INSERT INTO poojan_employee  values('103','Kevin','Vasoya','Rajkot','974651234','Male','02','kevin@gmail','S-Om Society,Mehsana','19','kevin@3037','kevin123','kevin123');
INSERT INTO poojan_employee  values('104','Neha','Chawda','Vadodara','987441234','Female','05','neha@gmail','A-Neha Society,Mehsana','32','neha@3037','neha123','neha123');\
INSERT INTO poojan_employee  values('105','Meera','Shah','Mumbai','987651233','Female','04','meera@gmail','A-meera Society,Mumbai','24','meera@3037','meera123','meera123');

--Shoe Employee Table Data
SELECT * FROM poojan_employee;


--Create Exam Table
CREATE TABLE poojan_exam
(
  exam_id INT NOT NULL PRIMARY KEY,
  --Foreign key  of Employee Table
  Exam_empId INT NOT NULL,
  FOREIGN KEY (Exam_empId) REFERENCES poojan_employee(EmpId),
  title VARCHAR(15),
  exam_description VARCHAR(100),
  marks INT,
  exam_date DATE
)

--Insert data into exam table
INSERT INTO poojan_exam VALUES ('1001','101','junior dev.','Exam for junior developer','70','2021-10-11');
INSERT INTO poojan_exam VALUES ('1002','102','tester dev','Exam for tester developer','58','2021-09-14');
INSERT INTO poojan_exam VALUES ('1003','101','frontend dev.','Exam for frontend developer','85','2022-06-23');
INSERT INTO poojan_exam VALUES ('1004','104','senior dev.','Exam for senior developer','67','2022-02-11');
INSERT INTO poojan_exam VALUES ('1005','103','backend dev.','Exam for backend developer','84','2022-07-24');

--show exam table data
SELECT * FROM poojan_exam;

--update age 23 of employee whoes id is 101
UPDATE poojan_employee SET Age='23' WHERE EmpId='101';

--delete data of emoloyee whose id is 105
DELETE FROM poojan_employee WHERE EmpId='105';

--show total number of employee on the basis of city
SELECT COUNT(FirstName),City FROM poojan_employee GROUP BY(City);

--alter 
ALTER TABLE poojan_employee ALTER COLUMN City VARCHAR(15);

--show data in asccending order
SELECT * FROM poojan_exam ORDER BY Marks ASC;

--distinct
SELECT DISTINCT(City) FROM poojan_employee;

--lastname starts with Pa
SELECT FirstName from poojan_employee WHERE LastName LIKE 'Pa%';

--Firstname contain sub-string oo
SELECT FirstName from poojan_employee WHERE FirstName LIKE '%oo%';

--DROP table
DROP TABLE poojan_exam;

--Add new coloumn
ALTER TABLE poojan_employee ADD Birthday DATE;
