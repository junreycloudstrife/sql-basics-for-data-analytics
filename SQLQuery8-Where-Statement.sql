/*
Where statement
=, <>, <, >, And, Or, Like, Null. Not Null, In
*/

/*
--Display the row where FirstName is 'Jim'
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'


--Display the row where FirstName is not 'Jim'
SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'


--Display the rows where Age is greater than 30
SELECT *
FROM EmployeeDemographics
WHERE Age > 30


--Display the rows where Age is greater and equal 30
SELECT *
FROM EmployeeDemographics
WHERE Age >= 30


--Display the rows where Age is less than 32
SELECT *
FROM EmployeeDemographics
WHERE Age < 32


--Display the rows where Age is less and equal 32
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32


--Display the rows where Age is less and equal 32 and
--gender is Male
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'


--Display the rows where Age is less and equal 32 or
--gender is Female
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'


--Display the rows where LastName starts with 'S'
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'


--Display the rows where LastName contains 'S'
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'


--Display the rows where LastName starts with 'S' and
--has 'o' somewhere else
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'


--Display the rows where LastName contains combination
--of 'S', 'c' and 'ott'
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%c%ott%'


--Display the rows where FirstName is NULL
SELECT *
FROM EmployeeDemographics
WHERE LastName is NULL --nothing is displayed


--Display the rows where FirstName is NULL
SELECT *
FROM EmployeeDemographics
WHERE LastName is NOT NULL --all is displayed
*/

--Display the rows where FirstName is 'Jim' and 'Michael'
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')
