/*
Updating/Deleting Data
*/

/*
--Updating the employee ID of Holly Flax
UPDATE SQLTutorial.dbo.EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics


--Updating the age and gender of Holly Flax
UPDATE SQLTutorial.dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics


-- Delete the row with employee ID is 1005
DELETE FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1005

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics


--Tips to ensure what data you want to delete
--Execute Select first to confirm the data to delete
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1004

--Then execute the delete
DELETE FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1004
*/