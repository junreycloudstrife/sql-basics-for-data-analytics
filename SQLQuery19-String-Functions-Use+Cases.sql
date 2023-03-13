/*
String Functions - TRIM, LTRIM, RTRIM, Replace, Substring,
Upper, Lower

*/

/*
CREATE TABLE EMployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

INSERT INTO EmployeeErrors VALUES
('1001  ', 'Jimbo', 'Halbert'),
('   1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired')

SELECT *
FROM EmployeeErrors


--Using TRIM to remove whitespaces on both sides
SELECT EmployeeID, TRIM(EmployeeID) AS ID
FROM EmployeeErrors

--Using LTRIM to remove whitespaces on left side
SELECT EmployeeID, LTRIM(EmployeeID) AS ID
FROM EmployeeErrors

--Using RTRIM to remove whitespaces on right side
SELECT EmployeeID, RTRIM(EmployeeID) AS ID
FROM EmployeeErrors


--Using REPLACE to fixed the LastName with extra characters
SELECT Lastname, REPLACE(Lastname, '- Fired','') as LastNameFixed
FROM EmployeeErrors


--Using SUBSTRING to specific the start character and
--the character length
SELECT SUBSTRING(FirstName,1,3)
FROM EmployeeErrors


--Fuzzy matching using SUBSTRING
SELECT SUBSTRING(err.FirstName,1,3), SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)
--Usually include Gender, LastName, Age and Date of Birth (DOB)
--It can give better accuracy in matching people accross tables
*/

--Using UPPER and LOWER
SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors
