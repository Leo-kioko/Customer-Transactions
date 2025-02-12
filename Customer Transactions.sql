SELECT * FROM transactions.`customer transactions`;

SELECT 
    Gender, 
    SUM(`Transaction Amount`) AS Total_Spent
FROM 
    transactions.`customer transactions`
GROUP BY 
    Gender
ORDER BY 
    Total_Spent DESC;
    
    SELECT 
    `Merchant Name`, 
    SUM(`Transaction Amount`) AS Total_Spent
FROM 
 `customer transactions`   
GROUP BY 
    `Merchant Name`
ORDER BY 
    round(Total_Spent,0)
    DESC
LIMIT 1;

SELECT 
    Category, 
    AVG(`Transaction Amount`) AS Avg_Spent
FROM 
    `customer transactions`
GROUP BY 
    Category
ORDER BY 
    Avg_Spent DESC,
    round(Avg_Spent,1);
    
    SELECT 
    Date AS Transaction_Date, 
    SUM(`Transaction Amount`) AS Total_Spent
FROM 
    `customer transactions`
GROUP BY 
    Transaction_Date
ORDER BY 
    Total_Spent DESC;
    
    SELECT 
    `Customer ID`, 
    COUNT(*) AS Transaction_Count
FROM 
    `customer transactions`
GROUP BY 
    `Customer ID`
ORDER BY 
    Transaction_Count DESC;
    
    SELECT 
    Name,
    Surname,
    `Customer ID`, 
    SUM(`Transaction Amount`) AS Total_Spent
FROM 
    `customer transactions`
GROUP BY 
    `Customer ID`,Name,Surname
ORDER BY 
    Total_Spent DESC
LIMIT 5;

SELECT 
    Category, 
    Gender, 
    SUM(`Transaction Amount`) AS Total_Spent
FROM 
    `customer transactions`
GROUP BY 
    Category, 
    Gender
ORDER BY 
    Category, Total_Spent DESC;
    
    SELECT 
    `Merchant Name`, 
    COUNT(DISTINCT `Customer ID`) AS Unique_Customers
FROM 
    `customer transactions`
GROUP BY 
    `Merchant Name`
ORDER BY 
    Unique_Customers DESC;

SELECT 
Name,
    `Customer ID`, 
    MAX(`Transaction Amount`) AS Highest_Transaction
FROM 
    `customer transactions`
GROUP BY 
    Name,`Customer ID`
ORDER BY 
    Highest_Transaction DESC;
    
    SELECT 
    Date, 
    AVG(`Transaction Amount`) AS Avg_Spent
FROM 
    `customer transactions`
GROUP BY 
    Date
ORDER BY 
    Date;
    
    SELECT 
    Name,
    `Customer ID`, 
    COUNT(*) AS High_Value_Transactions
FROM 
    `customer transactions`
WHERE 
    `Transaction Amount` > 1000 -- Replace 1000 with your threshold
GROUP BY 
    Name,
    `Customer ID`
ORDER BY 
    High_Value_Transactions DESC;

 SELECT 
    Name,
    `Customer ID`, 
    `Transaction Amount`
FROM 
    `customer transactions`
WHERE 
    `Transaction Amount` > 1000 -- Replace 1000 with your threshold
GROUP BY 
    Name,
    `Customer ID`,
    `Transaction Amount`
ORDER BY 
    `Transaction Amount` DESC;
    
    
    SELECT 
    CASE 
        WHEN  Age BETWEEN 18 AND 24 THEN '18-24'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS Age_Group, 
    COUNT(*) AS Customer_Count
FROM 
    `customer transactions`
GROUP BY 
    Age_Group
ORDER BY 
    Age_Group;
    



