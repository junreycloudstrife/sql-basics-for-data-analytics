/*
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg
*/

--Display all columns and rows
--SELECT *
--FROM EmployeeDemographics

--Display FirstName column only
--SELECT FirstName
--FROM EmployeeDemographics

--Display FirstName and LastName column
--SELECT FirstName, LastName
--FROM EmployeeDemographics

--Dislay the top 5 rows
--SELECT TOP 5 *
--FROM EmployeeDemographics

--Display all the distinct EmployeeID
--SELECT DISTINCT(EmployeeID)
--FROM EmployeeDemographics

--Display all the gender
--SELECT DISTINCT(Gender)
--FROM EmployeeDemographics

--Display the count of LastName
--SELECT COUNT(LastName)
--FROM EmployeeDemographics

--Display the count of LastName with alias LastNameCount
--SELECT COUNT(LastName) AS LastNameCount
--FROM EmployeeDemographics

--Display maximum salary from EmployeeSalary table
--SELECT MAX(Salary) AS MaxSalary
--FROM EmployeeSalary

--Display minimum salary from EmployeeSalary table
--SELECT MIN(Salary) AS MinSalary
--FROM EmployeeSalary

--Display average salary from EmployeeSalary table
SELECT AVG(Salary) AS AvgSalary
FROM EmployeeSalary
