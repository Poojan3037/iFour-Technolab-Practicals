-- trigger

CREATE TRIGGER poojan_Trigger
ON poojan_exam
FOR
INSERT,UPDATE,DELETE
AS
PRINT'changes applied on Exam Table'
ROLLBACK;

INSERT INTO poojan_exam VALUES ('1006','103','backend dev.','Exam for backend developer','44','2022-03-11');


--view

CREATE VIEW [Employee Details] AS
SELECT FirstName,LastName,City
FROM poojan_employee
WHERE City = 'Vadodara';

SELECT * FROM [Employee Details];