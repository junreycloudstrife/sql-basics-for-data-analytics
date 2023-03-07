/*
Aliasing
*/

/*
--Aliasing using AS
SELECT FirstName AS FName
FROM [SQLTutorial].[dbo].[EmployeeDemographics]


--Aliasing without using AS
SELECT FirstName FName
FROM [SQLTutorial].[dbo].[EmployeeDemographics]


--Combining first name and last name into full name
SELECT FirstName + ' ' + LastName AS FullName
FROM [SQLTutorial].[dbo].[EmployeeDemographics]


--Defining a name for a column
SELECT AVG(Age) AS AvgAge
FROM [SQLTutorial].[dbo].[EmployeeDemographics]


--Aliasing for tables 1
SELECT Demo.EmployeeID
FROM [SQLTutorial].[dbo].[EmployeeDemographics] AS Demo


--Aliasing for tables 2
SELECT Demo.EmployeeID, Sal.Salary
FROM [SQLTutorial].[dbo].[EmployeeDemographics] AS Demo
JOIN [SQLTutorial].[dbo].[EmployeeSalary] AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
*/

--Aliasing for tables 3
SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName
FROM [SQLTutorial].[dbo].EmployeeDemographics Demo
LEFT JOIN [SQLTutorial].[dbo].EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQLTutorial].[dbo].WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID