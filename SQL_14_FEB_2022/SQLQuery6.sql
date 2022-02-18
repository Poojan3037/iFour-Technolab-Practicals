--Stored Procedure For Exam


---- Select all data of Exam

CREATE PROCEDURE selectAllExamPoojan
AS
SELECT * FROM poojan_exam;


EXEC selectAllExamPoojan;

--Insert new record
CREATE PROCEDURE newExamPoojan

  @id INT,
  @exam_empId INT,
  @title VARCHAR(15),
  @exam_description VARCHAR(100),
  @marks INT,
  @exam_date DATE

As
BEGIN
INSERT INTO poojan_exam VALUES (@id,@exam_empId,@title,@exam_description,@marks,@exam_date)
END
GO

EXEC newExamPoojan 1006,102,'backend dev.','Exam for backend developer',45,'2022-07-24'

--update Exam

CREATE PROCEDURE updateExam_Poojan
@id INT,
@marks INT
AS
BEGIN
UPDATE poojan_exam SET marks=@marks  WHERE exam_id=@id
END
go

EXEC updateExam_Poojan @id=1006,@marks=70


--delete Exam
CREATE PROCEDURE deleteExamPoojan
@id INT
AS
BEGIN
DELETE FROM poojan_exam WHERE exam_id=@id
END
GO

EXEC deleteExamPoojan 1006

