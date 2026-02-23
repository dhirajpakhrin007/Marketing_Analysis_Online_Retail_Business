SELECT * FROM dbo.customers

SELECT * FROM dbo.geography;

-- SQL statement to join dim_customers with dim_geography to enrich customer data with geographical information

SELECT
	c.CustomerID,
	c.CustomerName,
	c.Email,
	c.Gender,
	c.Age,
	g.Country,
	g.City
From dbo.customers c
LEFT JOIN dbo.geography g 
ON c.GeographyID = g.GeographyID;
