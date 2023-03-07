/*
Union, Union All
*/

/*
--Create WareHouseEmployeeDemographics table
CREATE TABLE WareHouseEmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

-- Insert data into WareHouseEmployeeDemographics table
INSERT INTO WareHouseEmployeeDemographics VALUES
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female'),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

SELECT *
FROM WareHouseEmployeeDemographics

--Combining two queries with union operator 
--while removing duplicates
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
*/

--Combining two queries with union all operator 
--while showing duplicates and order by EmployeeID
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID
