-- View all data on the Enron Data Set

SELECT *
FROM dbo.enron_transpose_data$


-- Total number of records on the dataset

SELECT COUNT(*)
FROM  dbo.enron_transpose_data$


-- Total persons of interest 
SELECT COUNT(*)
FROM dbo.enron_transpose_data$ as en
WHERE en.poi = 1


-- find the top salary earners in Enron
SELECT en.Name, en.salary, en.bonus
FROM dbo.enron_transpose_data$ as en
ORDER BY 3 DESC


--Find the POI count (Persons of interest)
SELECT *
FROM dbo.enron_transpose_data$ en
WHERE en.poi = 1 or en.email_address is null
ORDER BY en.total_payments DESC


SELECT COUNT(*)
FROM dbo.enron_transpose_data$ as en
WHERE en.email_address != 'NaN'

