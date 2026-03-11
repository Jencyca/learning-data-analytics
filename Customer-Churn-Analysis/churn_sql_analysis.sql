use churn_db;

SHOW TABLES;

SELECT *
FROM `wa_fn-usec_-telco-customer-churn`
LIMIT 5;

SELECT COUNT(*) AS total_customers
FROM `wa_fn-usec_-telco-customer-churn`;

DESCRIBE `wa_fn-usec_-telco-customer-churn`;

SELECT Churn, COUNT(*) AS total
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Churn;

SELECT 
COUNT(CASE WHEN Churn='Yes' THEN 1 END)*100.0 / COUNT(*) AS churn_rate
FROM `wa_fn-usec_-telco-customer-churn`;

SELECT gender, Churn, COUNT(*) AS total
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY gender, Churn;

SELECT Contract, Churn, COUNT(*) AS total
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Contract, Churn;

SELECT PaymentMethod, Churn, COUNT(*) AS total
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY PaymentMethod, Churn;

SELECT InternetService, Churn, COUNT(*) AS total
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY InternetService, Churn;

SELECT Churn, AVG(MonthlyCharges) AS avg_charge
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Churn;

SELECT Churn, AVG(tenure) AS avg_tenure
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Churn;

SELECT 
SUM(MonthlyCharges) AS monthly_revenue_loss
FROM `wa_fn-usec_-telco-customer-churn`
WHERE Churn='Yes';

SELECT 
Churn,
AVG(MonthlyCharges) AS avg_monthly_charge
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Churn;

SELECT 
Contract,
COUNT(CASE WHEN Churn='Yes' THEN 1 END) AS churn_customers
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Contract
ORDER BY churn_customers DESC;

SELECT 
PaymentMethod,
COUNT(CASE WHEN Churn='Yes' THEN 1 END) AS churn_count
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY PaymentMethod
ORDER BY churn_count DESC;

SELECT 
InternetService,
COUNT(CASE WHEN Churn='Yes' THEN 1 END) AS churn_customers
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY InternetService
ORDER BY churn_customers DESC;

SELECT 
Churn,
AVG(tenure) AS avg_tenure
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Churn;

SELECT 
COUNT(*) AS high_risk_customers
FROM `wa_fn-usec_-telco-customer-churn`
WHERE tenure < 12 AND Contract='Month-to-month';

SELECT AVG(tenure) AS avg_tenure_churn
FROM `wa_fn-usec_-telco-customer-churn`
WHERE Churn='Yes';

SELECT AVG(MonthlyCharges) AS avg_charge_churn
FROM `wa_fn-usec_-telco-customer-churn`
WHERE Churn='Yes';