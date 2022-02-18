--Stored Procedure On Department

---- Select all data of Department

CREATE PROCEDURE selectAllDeaprtmentPoojan
AS
SELECT * FROM poojan_Department;


EXEC selectAllDeaprtmentPoojan;

--Insert new record
CREATE PROCEDURE newDepartmentPoojan
@id INT,
@dname VARCHAR(20) ,
@dDescription VARCHAR(200)

As
BEGIN
INSERT INTO poojan_Department VALUES (@id,@dname,@dDescription)
END
GO

EXEC newDepartmentPoojan 6,'Graphics Desienger','Design website'

--update department

CREATE PROCEDURE updateDepartment_Poojan
@id INT,
@dname VARCHAR(20)
AS
BEGIN
UPDATE poojan_Department SET Department_Name=@dname WHERE id=@id
END
go

EXEC updateDepartment_Poojan @id=6,@dname='Graphic Developer'


--delete department
CREATE PROCEDURE deleteDpartmentPoojan
@id INT
AS
BEGIN
DELETE FROM poojan_Department WHERE id=@id
END
GO

EXEC deleteDpartmentPoojan 6