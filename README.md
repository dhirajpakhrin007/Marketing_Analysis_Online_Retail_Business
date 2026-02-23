# Marketing Analysis - Online Retain Business

_Analyzing the effectiveness of marketing campaign for an online retail business to identify the strengths and the area for improvment in the marketing strategies using SQL, Python, and Power BI._

---

## Table of Contents
- <a href="#business-problem">Business Problem</a>
- <a href="#dataset">Dataset</a>
- <a href="#tools--technologies">Tools and Technologies</a>
- <a href="#data-cleaning-preparation">Data Cleaning and Preparation</a>
- <a href="#sentiment-analysis">Sentiment Analysis</a>
- <a href="#dashboard">Dashboard</a>
- <a href="#key-findings">Research Questions and Key Findings</a>
- <a href="#final-recommendations">Final Recommendations</a>


---
<h2><a class="anchor" id="business-problem"></a>Business Problem</h2>

ShopEasy, an online retail business, is faced reduce in customer engagement and conversion rates despite launching several new online marketing campaigns. As per the Marketing manager, they observed a decline in customer engagement and conversion rates despite the increased investment in marketing. Their return on investment isn't meeting their expectations. Similarly, Customer Service Manager noticed a drop in customer engagement and satisfaction, which is impacting overall conversion rates. This project aims to conduct a detailed analysis and identify areas for improvement in their marketing strategies.

**Key Points :**
-  Reduced Customer Engagement: The number of customer interactions and engagement with the site and marketing content has declined.
- Decreased Conversion Rates: Fewer site visitors are converting into paying customers.
- High Marketing Expenses: Significant investments in marketing campaigns are not yielding expected returns.
- Need for Customer Feedback Analysis: Understanding customer opinions about products and services is crucial for improving engagement and conversions.

**Key Performing Indicators :**
- **Conversion Rate:** Percentage of website visitors who make a purchase.
- **Customer Engagement Rate:** Level of interaction with marketing content (clicks, likes, comments).
- **Average Order Value (AOV):** Average amount spent by a customer per transaction.
- **Customer Feedback Score:** Average rating from customer reviews. 


---
<h2><a class="anchor" id="dataset"></a>Dataset</h2>

- Database(PortfolioProject_MarketingAnalytics.bak) contains multiple tables(customer_journey, customer_review, customers, engagement_data, geography, products) which is located in '/dataset/' folder 
- Fact tables: customer_journey, customer_review, engagement
- dimension tables: customers, product

---
<h2><a class="anchor" id="tools--technologies"></a>Tools and Technologies</h2>

- SQL (Data Cleaning)
- Python (Database connection, Sentiment Analysis)
- Power BI (Interactive Visualization)
- Github 

---
<h2><a class="anchor" id="data-cleaning-preparation"></a>Data Cleaning and Preparation</h2>

**1. dim_customers**

 - Joined customers table with geography table to enrich customer data with geographic info.

**2. dim_products**
- Created new column "Price Category" with three categories(low, Medium and High) based on product price

**3. fact_customer_reviews**
- Removed whitespace in ReviewText column

**4. fact_engagement_data**
- Fixed duplicate grains in ContentType column.
- Extracted Views and Clicks in a separate column from ViewsClicksCombined column.
- Formatted the date into dd.MM.yyyy
- Removed 'Newsletter' content from the table because of irrelevency for our analysis

**5. fact_customer_journey**
- removed duplicate records

---
<h2><a class="anchor" id="sentiment-analysis"></a>Sentiment Analysis</h2>

- 1. Packages: pyodbc(Connect and fetch data from database), nltk(analyse sentiment of reviews), pandas(convert data to dataframe)
- 2. Fetched data(ReviewID, CustomerID, ProductID, ReviewDate, Rating, ReviewText) from fact_customer_review table.
- 3. Calculated sentiment score based using nltk package
- 4. Catagorized reviews into four categories (Positive, Negative, Mixed Positive, Mixed Negative, Neutral) and sentiment bucket (0.5 to 1.0, 0.0 to 0.49, -0.49 to 0.0, -1.0 to -0.5)
- 5. Extracted new table as .csv with sentiment score, sentiment category and sentiment bucket


---
<h2><a class="anchor" id="dashboard"></a>Interactive Dashboard</h2>

The dashboards is designed using Microsoft Power BI which displays:
 - Overview Performance 
 - Conversion Rate Detail
 - Customer Engagement Detail
 - Customer Feedback Detail

<h2>Overview</h2>

![Marketing Analysis](dashboard/Overview.png)

<h2>Conversion Detail</h2>

![Marketing Analysis](dashboard/Overview.png)

<h2>Customer Engagement</h2>

![Marketing Analysis](dashboard/Overview.png)

<h2>Customer Feedback</h2>

![Marketing Analysis](dashboard/Overview.png)


---
<h2><a class="#key-findings" id="how-to-run-this-project"></a>Research Questions and Key Findings</h2>

- 1. What are the factors impacting the conversion rate and ways to improve it?
- 2. What types of content drives the highest engagement?
- 3. What are the common themes in customer reviews and the actions to be taken?

Detail findings from the analysis is documented in a powerpoint named 'Data Presentation.pptx'

---
<h2><a class="anchor" id="final-recommendations"></a>Final Recommendations</h2>

**1. Increase Conversion Rates:**
Target High-Performing Product Categories: Focus marketing efforts on products with demonstrated high conversion rates, such as Hockey sticks, Ice skate, Surfboard, Baseball Gloves. Implement seasonal promotions or personalized campaigns during peak months (e.g., March and September) to capitalize on these trends.

**2. Enhance Customer Engagement:**
Revitalize Content Strategy: To turn around declining views and low interaction rates, experiment with more engaging content formats, such as interactive videos or user-generated content. Additionally, boost engagement by optimizing call-to-action placement in social media and blog content, particularly during historically lower-engagement months (September-December).

**3. Improve Customer Feedback Scores:**
Address Mixed and Negative Feedback: Implement a feedback loop where mixed and negative reviews are analyzed to identify common issues. Develop improvement plans to address these concerns. Consider following up with dissatisfied customers to resolve issues and encourage re-rating, aiming to move average ratings closer to the 4.0 target.









