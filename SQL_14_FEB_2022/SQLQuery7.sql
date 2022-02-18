--Inner Join

SELECT poojan_employee.FirstName,poojan_Department.Department_Name
FROM poojan_employee 
INNER JOIN poojan_Department ON poojan_employee.Department = poojan_Department.id;

SELECT poojan_employee.FirstName,poojan_exam.title
FROM poojan_employee 
INNER JOIN poojan_exam ON poojan_employee.EmpId = poojan_exam.Exam_empId;

--Left Join
SELECT poojan_employee.FirstName,poojan_Department.Department_Name
FROM poojan_employee 
LEFT JOIN poojan_Department ON poojan_employee.Department = poojan_Department.id;


SELECT poojan_employee.FirstName,poojan_exam.title
FROM poojan_employee 
Left JOIN poojan_exam ON poojan_employee.EmpId = poojan_exam.Exam_empId;


--right join
SELECT poojan_employee.FirstName,poojan_Department.Department_Name
FROM poojan_employee 
RIGHT JOIN poojan_Department ON poojan_employee.Department = poojan_Department.id;


SELECT poojan_employee.FirstName,poojan_exam.title
FROM poojan_employee 
RIGHT JOIN poojan_exam ON poojan_employee.EmpId = poojan_exam.Exam_empId;

-- full join
SELECT poojan_employee.FirstName,poojan_Department.Department_Name
FROM poojan_employee 
FULL JOIN poojan_Department ON poojan_employee.Department = poojan_Department.id;

SELECT poojan_employee.FirstName,poojan_exam.title
FROM poojan_employee 
FULL JOIN poojan_exam ON poojan_employee.EmpId = poojan_exam.Exam_empId;