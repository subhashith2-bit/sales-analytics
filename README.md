# Sales Analytics

A data analytics project focused on understanding customer shopping behavior, sales patterns, and customer preferences using Python, SQL, and Power BI.

## Project Overview

The goal of this project is to analyze customer purchase data and find useful patterns that can help a business understand its customers and sales performance.

The analysis covers:

- Sales and transaction performance
- Product and category performance
- Customer demographics
- Location-wise sales
- Seasonal purchasing patterns
- Subscription behavior
- Discount usage
- Payment methods
- Purchase frequency
- Customer ratings
- Age-based purchasing behavior

## Dataset

The dataset contains **3,900 customer purchase records** with information about customers, products, purchases, ratings, payment methods, and purchasing behavior.

The original dataset contained **18 columns**.

Some of the main columns include:

- Customer ID
- Age
- Gender
- Item Purchased
- Category
- Purchase Amount
- Location
- Size
- Color
- Season
- Review Rating
- Subscription Status
- Shipping Type
- Discount Applied
- Promo Code Used
- Previous Purchases
- Payment Method
- Frequency of Purchases

## Tools Used

- Python
- Pandas
- NumPy
- Matplotlib
- MySQL
- Power BI
- Excel

## Project Workflow

```text
Raw Dataset
     ↓
Data Cleaning
     ↓
Exploratory Data Analysis
     ↓
SQL Business Analysis
     ↓
Power BI Dashboard
     ↓
Business Insights & Recommendations
```

# Python Analysis

Python and Pandas were used for data cleaning, preparation, exploratory data analysis, and visualization.

## 1. Initial Dataset Check

The dataset was first loaded using Pandas and checked to understand its structure.

The initial checks included:

- Number of rows and columns
- First few records
- Data types
- Missing values
- Summary statistics

The dataset contained:

- **3,900 rows**
- **18 columns**
- Numeric and categorical variables
- Missing values only in the `review_rating` column

## 2. Handling Missing Values

There were **37 missing values** in the `review_rating` column.

Instead of removing these records, the missing ratings were filled using the **median review rating within each product category**.

This helped retain all 3,900 customer records while keeping the imputed values relevant to each category.

## 3. Column Name Cleaning

The column names were cleaned to make them easier to work with in Python and SQL.

The cleaning included:

- Converting column names to lowercase
- Replacing spaces with underscores
- Simplifying the purchase amount column name

For example:

```text
Purchase Amount (USD)
```

was changed to:

```text
purchase_amount
```

## 4. Removing Duplicate Information

The dataset contained both:

- `discount_applied`
- `promo_code_used`

These two columns contained the same information.

After checking their values, `promo_code_used` was removed from the analysis dataset to avoid keeping duplicate information.

## 5. Creating Age Groups

Age was divided into four groups using quartiles:

- Young Adult
- Adult
- Middle Aged
- Senior

This was done using `pd.qcut()` so that the groups contained approximately similar numbers of customers.

The age groups were later used to compare average purchase amounts across different customer age segments.

## 6. Overall Sales and Customer Metrics

The overall dataset was analyzed to calculate:

- Total number of transactions
- Total purchase amount
- Average purchase amount
- Average review rating
- Average number of previous purchases

These metrics were used as the main baseline for the rest of the analysis.

## 7. Age and Gender Analysis

The distribution of customers by gender was analyzed using transaction counts and percentages.

The age distribution was also examined using:

- Descriptive statistics
- Age distribution histogram
- Age groups

The dataset contained customers across a broad age range, approximately from **18 to 70 years**.

## 8. Category Analysis

Customer purchases were analyzed across the different product categories.

For each category, the following were calculated:

- Number of purchases
- Total purchase amount
- Average purchase amount

The analysis showed that:

- **Clothing** had the highest purchase volume and total purchase amount.
- **Accessories** followed Clothing.
- **Footwear** had the highest average purchase amount.
- **Outerwear** had the lowest total purchase amount among the categories.

This helped identify which categories were strongest in terms of volume and transaction value.

## 9. Individual Product Analysis

Individual products were analyzed using:

- Purchase count
- Total purchase amount
- Average purchase amount

The top products were identified based on total purchase amount.

This helped identify individual products that contributed strongly to overall sales.

## 10. Location Analysis

Sales were analyzed across different customer locations.

The analysis included:

- Number of purchases by location
- Total purchase amount by location
- Average purchase amount by location

The top-performing locations were identified based on total purchase amount.

This provided a view of regional purchasing patterns.

## 11. Seasonal Analysis

Purchasing behavior was compared across:

- Spring
- Summer
- Fall
- Winter

For each season, the analysis calculated:

- Number of purchases
- Total purchase amount
- Average purchase amount

The results showed that **Spring had the highest purchase activity**, while **Summer was slightly lower**.

Overall, the differences between seasons were relatively small, suggesting that purchasing behavior was fairly consistent throughout the year.

## 12. Subscription Analysis

Customers were compared based on their subscription status.

The analysis calculated:

- Number of transactions
- Total purchase amount
- Average purchase amount

Subscription and non-subscription customers showed very similar average purchase amounts.

This suggests that subscription status alone did not show a major difference in average transaction value within this dataset.

## 13. Discount Analysis

Purchases were analyzed based on whether a discount was applied.

The analysis compared:

- Number of discounted and non-discounted transactions
- Total purchase amount
- Average purchase amount

The average purchase amounts between the two groups were relatively close.

Therefore, the analysis identifies an association between discount usage and purchase amount, but does not establish that discounts caused customers to spend less or more.

## 14. Payment Method Analysis

Different payment methods were analyzed based on transaction volume and average purchase amount.

This helped identify:

- Most commonly used payment methods
- Purchase activity across payment methods
- Differences in average transaction value

## 15. Purchase Frequency Analysis

The `frequency_of_purchases` column was analyzed to understand how frequently customers made purchases.

The analysis included:

- Number of transactions for each frequency
- Total purchase amount
- Average purchase amount

A numerical purchase-frequency field was also created by mapping the frequency categories to approximate days.

For example:

```text
Weekly      → 7 days
Fortnightly → 14 days
Annually    → 365 days
```

This made the categorical frequency information easier to use for further analysis.

## 16. Review Rating Analysis

Customer review ratings were analyzed to understand the distribution of ratings and their relationship with purchase amounts.

The analysis included:

- Number of reviews for each rating
- Average purchase amount for each rating
- Total purchase amount for each rating

The ratings were generally concentrated around the middle-to-high range.

## 17. Age Group Purchase Analysis

The final cross-analysis compared average purchase amounts across the four age groups.

This helped identify whether purchasing value differed across customer age segments.

The analysis focused on **average purchase amount rather than simply comparing the number of customers**, since the age groups were created using quartiles and therefore contain roughly similar numbers of records.

# SQL Analysis

MySQL was used to answer the main business questions using the cleaned dataset.

The analysis included:

- Total purchase amount
- Average purchase amount
- Category-wise sales
- Top 10 products
- Top 10 locations
- Seasonal sales
- Subscription analysis
- Discount analysis
- Payment method analysis
- Purchase frequency analysis
- Review rating analysis
- Age group analysis

Example:

```sql
SELECT
    category,
    COUNT(*) AS total_transactions,
    SUM(purchase_amount) AS total_purchase_amount,
    AVG(purchase_amount) AS average_purchase_amount
FROM customer_shopping_behavior
GROUP BY category
ORDER BY total_purchase_amount DESC;
```

# Power BI Dashboard

The Power BI dashboard provides an interactive view of the analysis.

## Dashboard KPIs

- Total Purchase Amount
- Average Purchase Amount
- Total Transactions
- Average Review Rating

## Dashboard Visuals

- Purchase Amount by Category
- Top 10 Products by Purchase Amount
- Top 10 Locations by Purchase Amount
- Purchase Amount by Season
- Purchase Amount by Subscription Status
- Transactions by Payment Method
- Transactions by Purchase Frequency
- Review Rating Distribution
- Average Purchase Amount by Age Group

## Dashboard Filters

The dashboard includes filters for:

- Gender
- Category
- Season
- Subscription Status

# Key Findings

Some of the main observations from the analysis were:

- Clothing has the highest purchase volume and total purchase amount among the categories.
- Footwear has the highest average purchase amount among the categories.
- Purchasing activity is relatively consistent across seasons, with Spring slightly higher than the other seasons.
- Subscription and non-subscription customers have very similar average purchase amounts.
- The difference in average purchase amount between discounted and non-discounted purchases is relatively small.
- Payment methods show different levels of usage across customers.
- Purchase frequency varies across different customer groups.
- Customer ratings are generally concentrated around the middle-to-high rating range.
- Customer age groups show differences in average purchase amount, which can be useful for customer segmentation.

# Business Recommendations

Based on the analysis:

- Focus on high-performing categories such as Clothing and Footwear.
- Identify products with strong sales performance and maintain their availability.
- Use location-level sales patterns to understand regional demand.
- Monitor seasonal changes even though the overall seasonal differences are relatively small.
- Analyze subscription customers further to identify opportunities for improving customer retention.
- Use purchase frequency and previous purchase behavior to identify high-value customers.
- Use customer segmentation to understand differences in purchasing behavior across age groups.

# Project Structure

```text
sales-analytics/
│
├── data/
│   └── customer_shopping_behavior_cleaned.csv
│
├── notebook/
│   └── sales.ipynb
│
├── powerbi/
│   └── sales_dashboard.pbix
│
├── report/
│   └── Sales_Analytics_Project_Report.docx
│
└── README.md
```

# Project Report

A detailed project report is included covering:

- Project Overview
- Business Problem
- Dataset Overview
- Data Cleaning & Preparation
- Exploratory Data Analysis
- SQL Business Analysis
- Power BI Dashboard
- Key Findings
- Business Recommendations
- Tools & Technologies
- Project Workflow

# Author

**Subhashith N**