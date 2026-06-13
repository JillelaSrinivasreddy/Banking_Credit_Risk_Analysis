USE banking_credit_risk_db;

#1.Total Customers
SELECT COUNT(*) AS total_customers
FROM german_credit_data;

#2. Default Rate
SELECT risk,
COUNT(*) AS customers
From german_credit_data
GROUP BY risk;

# 3.Reisk by age group 
SELECT 
CASE 
   WHEN Age < 30 THEN 'Young'
   WHEN Age BETWEEN 30 AND 50 THEN 'Middle'
   ELSE 'Senior'
END AS age_group,
Risk,
COUNT(*) AS customers
FROM german_credit_data
GROUP BY age_group, Risk;


#4.Loan Amount by Purpose
SELECT Purpose,
AVG('Credit amount') AS avg_loan
FROM german_credit_data
GROUP BY Purpose
ORDER BY avg_loans DESC;

#5. High-Risk Categories
SELECT Purpose,
COUNT(*) AS bad_loans
FROM german_credit_data
WHERE Risk = 'bad'
GROUP BY Purpose
ORDER BY bad_loans DESC;


DESCRIBE german_credit_data;



