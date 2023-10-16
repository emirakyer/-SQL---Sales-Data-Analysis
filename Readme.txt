About the Dataset

The provided code analyzes sales data over a specified period, offering insights into various aspects of the sales records. The dataset contains information such as the date of the sale, customer age, gender, product categories, and financial details of the transactions. This dataset enables us to explore customer demographics and sales trends.

Analysis Concepts

Data Preprocessing: The code begins by preparing the dataset for analysis. It creates a backup table, adds a new primary key "customer_id," and standardizes the "Customer_Gender" column by renaming values to "Male" and "Female."

Data Filtering: In this section, the code performs data filtering operations to answer specific questions. It selects and displays sub-categories of products and retrieves sales data for a particular customer ID (e.g., customer ID 1). Additionally, it retrieves sales records for a 25-year-old customer in Germany on a specific date.

Data Analysis

a. Price Distribution by Age: The code examines the distribution of customer ages and the products they purchase.

b. Profit Analysis: It identifies the most profitable year and the five most profitable months.

c. Customer Behavior: The code investigates customer behavior, including gender-based purchasing trends and sales in specific regions.

d. Category and Subcategory Profits: It determines the top 10 most profitable product categories and subcategories.

e. Revenue Analysis: The code analyzes which product categories contribute the most to revenue.

f. Age Group Analysis: Finally, it explores the age groups of male and female customers who make the most purchases.

Column Descriptions

Date: The date of each sales record, tracking changes in sales data over time.

Customer_Age: The age of the customer involved in the sale, helping us understand age-related purchasing patterns.

Customer_Gender: The gender of the customer, standardized to "Male" or "Female."

Country: The country where the sale took place.

Country_Region: The specific region or state within the country.

Product_Category: The category of the product sold, allowing for an analysis of different product types.

Sub_Category: A subcategory further specifying the type of product within a category.

Product: The name or description of the product sold.

Order_Quantity: The quantity of the product ordered in a single sale.

Unit_Cost: The cost per unit of the product.

Unit_Price: The price per unit at which the product is sold.

Profit: The profit generated from the sale.

Cost: The total cost of the products sold in a single transaction.

Revenue: The total revenue generated from the sale.