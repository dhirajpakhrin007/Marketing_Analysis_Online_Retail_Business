SELECT 
* FROM dbo.engagement_data;

-- Query to clean and normalize the engagement_data table

SELECT
	EngagementID,
	ContentID,
	CampaignID,
	ProductID,
	UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,
	LEFT(ViewsClicksCombined, CHARINDEX('-',ViewsClicksCombined) - 1) AS Views, --Replace the views part from the ViewsClicksCombined
	RIGHT(ViewsClicksCombined, CHARINDEX('-',ViewsClicksCombined)) AS Clicks,
	Likes,
	FORMAT(CONVERT(DATE, EngagementDate), 'dd.MM.yyyy') AS EngagementDate

FROM 
	dbo.engagement_data
WHERE
	ContentType != 'Newsletter'; -- excluding Newsletter because there are not relevent for our analysis