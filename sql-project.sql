create schema bikesales
use bikesales

SET SQL_SAFE_UPDATES = 0;



/*   """""""    Understanding the data    """"""  
*/

SHOW COLUMNS FROM sales

DESCRIBE sales;






/*   """""""    Data Preparing    """"""  
*/

create table salesbackup as select * from sales


ALTER TABLE sales
ADD customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;


UPDATE sales
SET Customer_Gender = CASE
    WHEN Customer_Gender = 'M' THEN 'Male'
    WHEN Customer_Gender = 'F' THEN 'Female'
    ELSE Customer_Gender
END



UPDATE sales
SET Order_Quantity = 0, Unit_Price = 0
WHERE Order_Quantity IS NULL OR Unit_Price IS NULL;



ALTER TABLE sales
CHANGE  State Country_Region varchar(50);






/*   """""""    Data Filtering    """"""  
*/

--
SELECT Sub_Category, Product FROM sales


-- Selecting Specific Customer ID

SELECT *
FROM sales
WHERE customer_id IN (1);



-- Select sales of a 25-year-old customer in Germany on 2013-12-09

SELECT * FROM sales
WHERE date = '2013-12-09' AND Customer_Age = 25 AND Country = "Germany";



-- Select 'Road-150' products in the 'Bikes' category

SELECT * FROM sales
WHERE Product_Category = 'Bikes' AND Product LIKE '%Road-150%';






/*   """""""    Data Analysis    """"""  
*/

-- Select sales in Australia, ordered by Order_Quantity in descending order, and limit to the top 10

SELECT * FROM sales
WHERE Country = 'Australia'
ORDER BY Order_Quantity DESC
LIMIT 10;



-- Display the total cost of 'Road-150' products in the United States for 43-year-old female customers

SELECT Customer_Age, Product, COUNT(Cost) AS Total_Cost
FROM sales
WHERE Customer_Gender = 'Female' AND Customer_Age = 43
AND Country = 'United States' AND Product LIKE 'Road-150%'
GROUP BY Customer_Age, Product;



-- What is the age distribution of customers?

SELECT Customer_Age, COUNT(*) as Customer_Count
FROM sales
GROUP BY Customer_Age
ORDER BY Customer_Age;



-- What is the most 5 profitable year?

SELECT Year, SUM(Profit) as Best_Profit
FROM sales
GROUP BY Year
ORDER BY Best_Profit DESC
LIMIT 5;



-- What are the 5 most profitable months?

SELECT Year,Month, SUM(Profit) as Best_Profits
FROM sales
GROUP BY Year,Month
ORDER BY Best_Profits DESC
LIMIT 5;



-- Which gender receives the most orders?

SELECT Customer_Gender, COUNT(*) as Total_Quantity
FROM sales
GROUP BY Customer_Gender;



-- Which 10 countries/country regions earn the highest income?

SELECT Country,Country_Region, SUM(Revenue) as Total_Revenue
FROM sales
GROUP BY Country, Country_Region
ORDER BY Total_Revenue DESC
LIMIT 10;



-- Which 10 categories/subcategories are the most profitable?

SELECT Product_Category, Sub_Category, SUM(Profit) as Total_Profit
FROM sales
GROUP BY Product_Category, Sub_Category
ORDER BY Total_Profit DESC
LIMIT 10;



-- Which product categories or subcategories brought more profit?

SELECT Product_Category, SUM(Revenue) as Total_Revenue
FROM sales
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;



-- Which age groups of male or female customers made more purchases?

SELECT Customer_Gender, Customer_Age, COUNT(*) as Customer_Count
FROM sales
GROUP BY Customer_Gender, Customer_Age
ORDER BY Customer_Gender, Customer_Age;















