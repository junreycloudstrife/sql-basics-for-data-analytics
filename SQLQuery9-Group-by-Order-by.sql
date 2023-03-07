/*
Group By, Order By
*/

/*
-- Only shows the distinct Female and Male gender
SELECT DISTINCT(Gender)
FROM EmployeeDemographics
*/

SELECT Gender, COUNT(Gender) AS GenderCount
FROM EmployeeDemographics
GROUP BY Gender