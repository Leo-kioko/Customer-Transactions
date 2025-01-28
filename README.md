# Customer-Transactions
About Dataset Synthetic Dataset of Customer Transactions with Demographic and Shopping Behavior Information

Features
•	Customer ID:The unique identifier for each customer.
•	Name: The customer's name.
•	Surname: The customer's last name.
•	Gender:The gender of the customer.
•	Birthdate: The customer's date of birth.
•	Transaction Amount:The amount of the transaction. ($)
•	Date: The date of the transaction.
•	Merchant Name:The name of the merchant where the transaction was made.
•	Category: The category of the transaction.



1. What is the total transaction amount by gender?
Insight: Understand spending patterns between genders.

sql
Copy
Edit
SELECT 
    Gender, 
    SUM(Transaction_Amount) AS Total_Spent
FROM 
    Transactions
GROUP BY 
    Gender
ORDER BY 
    Total_Spent DESC;
2. Which merchant has the highest total transaction amount?
Insight: Identify the top-performing merchants.

sql
Copy
Edit
SELECT 
    Merchant_Name, 
    SUM(Transaction_Amount) AS Total_Spent
FROM 
    Transactions
GROUP BY 
    Merchant_Name
ORDER BY 
    Total_Spent DESC
LIMIT 1;
3. What is the average transaction amount by category?
Insight: Determine which categories have higher average spending.

sql
Copy
Edit
SELECT 
    Category, 
    AVG(Transaction_Amount) AS Avg_Spent
FROM 
    Transactions
GROUP BY 
    Category
ORDER BY 
    Avg_Spent DESC;
4. What are the peak transaction months?
Insight: Identify seasonal trends in customer spending.

sql
Copy
Edit
SELECT 
    MONTH(Date) AS Transaction_Month, 
    SUM(Transaction_Amount) AS Total_Spent
FROM 
    Transactions
GROUP BY 
    Transaction_Month
ORDER BY 
    Total_Spent DESC;
5. What is the total number of transactions per customer?
Insight: Gauge customer engagement based on transaction frequency.

sql
Copy
Edit
SELECT 
    Customer_ID, 
    COUNT(*) AS Transaction_Count
FROM 
    Transactions
GROUP BY 
    Customer_ID
ORDER BY 
    Transaction_Count DESC;
6. Who are the top 5 customers by total spending?
Insight: Identify high-value customers.

sql
Copy
Edit
SELECT 
    Customer_ID, 
    SUM(Transaction_Amount) AS Total_Spent
FROM 
    Transactions
GROUP BY 
    Customer_ID
ORDER BY 
    Total_Spent DESC
LIMIT 5;
7. What is the age distribution of customers making transactions?
Insight: Explore the demographic breakdown by age group.

sql
Copy
Edit
SELECT 
    CASE 
        WHEN TIMESTAMPDIFF(YEAR, Birthdate, CURDATE()) BETWEEN 18 AND 24 THEN '18-24'
        WHEN TIMESTAMPDIFF(YEAR, Birthdate, CURDATE()) BETWEEN 25 AND 34 THEN '25-34'
        WHEN TIMESTAMPDIFF(YEAR, Birthdate, CURDATE()) BETWEEN 35 AND 44 THEN '35-44'
        WHEN TIMESTAMPDIFF(YEAR, Birthdate, CURDATE()) BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS Age_Group, 
    COUNT(*) AS Customer_Count
FROM 
    Transactions
GROUP BY 
    Age_Group
ORDER BY 
    Age_Group;
8. What is the gender-wise spending distribution for each category?
Insight: Analyze how different genders spend across categories.

sql
Copy
Edit
SELECT 
    Category, 
    Gender, 
    SUM(Transaction_Amount) AS Total_Spent
FROM 
    Transactions
GROUP BY 
    Category, Gender
ORDER BY 
    Category, Total_Spent DESC;
9. How many unique customers shopped at each merchant?
Insight: Determine customer diversity for each merchant.

sql
Copy
Edit
SELECT 
    Merchant_Name, 
    COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM 
    Transactions
GROUP BY 
    Merchant_Name
ORDER BY 
    Unique_Customers DESC;
10. What is the highest transaction amount for each customer?
Insight: Highlight the largest transactions per customer.

sql
Copy
Edit
SELECT 
    Customer_ID, 
    MAX(Transaction_Amount) AS Highest_Transaction
FROM 
    Transactions
GROUP BY 
    Customer_ID
ORDER BY 
    Highest_Transaction DESC;
11. What is the average transaction amount over time?
Insight: Observe how spending trends evolve on a daily, weekly, or monthly basis.

Daily:
sql
Copy
Edit
SELECT 
    Date, 
    AVG(Transaction_Amount) AS Avg_Spent
FROM 
    Transactions
GROUP BY 
    Date
ORDER BY 
    Date;
Monthly:
sql
Copy
Edit
SELECT 
    MONTH(Date) AS Transaction_Month, 
    YEAR(Date) AS Transaction_Year, 
    AVG(Transaction_Amount) AS Avg_Spent
FROM 
    Transactions
GROUP BY 
    Transaction_Year, Transaction_Month
ORDER BY 
    Transaction_Year, Transaction_Month;
12. Which customers make frequent high-value transactions?
Insight: Identify customers who often spend above a threshold.

sql
Copy
Edit
SELECT 
    Customer_ID, 
    COUNT(*) AS High_Value_Transactions
FROM 
    Transactions
WHERE 
    Transaction_Amount > 1000 -- Replace 1000 with your threshold
GROUP BY 
    Customer_ID
ORDER BY 
    High_Value_Transactions DESC;





    
