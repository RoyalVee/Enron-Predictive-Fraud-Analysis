-- View all data on the Enron Data Set

SELECT *
FROM dbo.enron_transpose_data$



-- find the top salary earners in Enron
SELECT en.Name, en.salary, en.bonus
FROM dbo.enron_transpose_data$ as en
ORDER BY 3 DESC


--Find the POI (Persons of interest)
SELECT en.Name, en.salary
FROM dbo.enron_transpose_data$ en
WHERE en.poi = 1
ORDER BY en.salary DESC


