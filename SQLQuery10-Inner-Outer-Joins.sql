/*
Inner Joins, Full/Left/Right Outer Joins
*/

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

--SELECT *
--FROM SQLTutorial.dbo.EmployeeSalary

-- Insert additional data to EmployeeDemographics table
--INSERT INTO SQLTutorial.dbo.EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics

-- Insert additional data to EmployeeSalary table
--INSERT INTO SQLTutorial.dbo.EmployeeSalary VALUES
--(1010, NULL, 47000),
--(NULL, 'Salesman', 43000)

--SELECT *
--FROM SQLTutorial.dbo.EmployeeSalary

--Inner join EmployeeDemographics and EmployeeSalary
--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Full outer join EmployeeDemographics and EmployeeSalary
--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Left outer join EmployeeDemographics and EmployeeSalary
--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Right outer join EmployeeDemographics and EmployeeSalary
--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemographics
--RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Actual application of inner join EmployeeDemographics and EmployeeSalary
--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemographics
--INNER JOIN SQLTutorial.dbo.EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID



--Inner join EmployeeDemographics and EmployeeSalary
--SELECT *
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Age, Gender, EmployeeSalary.EmployeeID, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Age, Gender, EmployeeSalary.EmployeeID, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
