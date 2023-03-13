/*
Temp Tables
*/

/*
--Creating a temp table #temp_Employee
CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #temp_Employee


--Insert data to temp table
INSERT INTO #temp_Employee VALUES
('1001', 'HR', '45000')

SELECT *
FROM #temp_Employee


--Insert data to temp table from EmployeeSalary table
INSERT INTO #temp_Employee
SELECT *
FROM SQLTutorial..EmployeeSalary

SELECT *
FROM #temp_Employee
*/

/*
--Creating another temp table #Temp_Employee2
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

SELECT *
FROM #Temp_Employee2

--Actual application of temp tables
--Insert data to #Temp_Employee2 from the querry
INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee2
*/

--Deleting the temp table if it exist before executing
--the creation
DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee2
