SELECT * FROM dbo.customer_reviews;


-- Query to clean the whitespace in the review text column

SELECT 
	ReviewID,
	CustomerID,
	ProductID,
	ReviewDate,
	Rating,
	REPLACE(ReviewText, ' ', ' ') AS ReviewText
FROM dbo.customer_reviews;