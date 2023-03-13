/*
Stored procedures
*/

/*
--Create a stored procedure TEST
CREATE PROCEDURE TEST
AS
SELECT *
FROM EmployeeDemographics

--Execute the stored procedure TEST
EXEC TEST


--Create a stored procedure Temp_Employee with
--temp table #temp_employee
CREATE PROCEDURE Temp_Employee AS
CREATE TABLE #Temp_Employee (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee

--Execute the procedure Temp_Employee
EXEC Temp_Employee
*/

--Modify the Temp_Employee procedure by adding parameter
--Right-click on the file then click Modify
--Execute the procedure to reflect changes
EXEC Temp_Employee @JobTitle = 'Salesman'