SELECT * FROM dbo.products;

-- ***************************************************************************************
-- ***************************************************************************************

-- Query to categorize product based on their price
SELECT
	ProductID, 
	ProductName, 
	Category, 
	-- creating ProductCategory column based on the product price
	CASE 
		WHEN Price < 50 THEN 'Low'
		WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
		ELSE 'High'
	END AS ProductCategory
FROM dbo.products;