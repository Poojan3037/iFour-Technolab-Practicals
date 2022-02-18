
--Stored Procedure On Employee

-- Select all employee
CREATE PROCEDURE SelectAllEmployee
AS
SELECT * FROM poojan_employee;


--Insert new record
CREATE PROCEDURE newEmployeeInsert_Poojan
@empid INT,
@fname VARCHAR(15),
@lname VARCHAR(15),
@city VARCHAR(20),
@number INT ,
@gender VARCHAR(7) ,
@department INT ,
@email VARCHAR(15) ,
@adress VARCHAR(100) ,
@age INT,
@userName VARCHAR(15) ,
@emp_Password VARCHAR(10) ,
@emp_Confirm_Password VARCHAR(10)

As
BEGIN
INSERT INTO poojan_employee(EmpId, FirstName, LastName, City, MobileNumber, Gender, Department, Email, Adress, Age, UserName, Emp_Password, Emp_Confirm_Password) 
VALUES(@empid,@fname,@lname,@city,@number,@gender,@department,@email,@adress,@age,@userName,@emp_Password,@emp_Confirm_Password)
END
GO

EXEC newEmployeeInsert_Poojan 105,'Meera','shah','Surat',1,'female',5,'meera@3037','C-101,Shiv Flats',21,'meera3037','1234','1234';


--update employee
CREATE PROCEDURE updateEmployee_Poojan
@number INT,
@id INT
AS
BEGIN
UPDATE poojan_employee SET MobileNumber=@number WHERE EmpId=@id
END
go

EXEC updateEmployee_Poojan @id=105,@number=98765432

--delete employee

CREATE PROCEDURE deleteEmployee_Poojan
@id INT
AS
BEGIN
DELETE FROM poojan_employee WHERE EmpID=@id;
END
GO

EXEC deleteEmployee_Poojan @id=105;


