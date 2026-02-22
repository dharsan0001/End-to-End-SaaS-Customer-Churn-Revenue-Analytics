CREATE DATABASE SaaS_Project;
use SaaS_Project;
select * from saas;
--total count 
SELECT COUNT(*) AS Total_Customers
FROM saas;
-- Churn Count
SELECT 
    Churn,
    COUNT(*) AS Count
FROM saas
GROUP BY Churn;
--Churn Rate
SELECT 
    CAST(
        SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*)
    AS DECIMAL(5,2)) AS Churn_Rate_Percentage
FROM saas;
--Total Revenue (MRR)
SELECT SUM(MonthlyFee) AS Total_Revenue
FROM saas;
--ARPU
SELECT 
    AVG(MonthlyFee) AS ARPU
FROM saas;
--Revenue Lost Due To Churn
SELECT 
    SUM(MonthlyFee) AS Revenue_Lost
FROM saas
WHERE Churn = 1;
--Revenue by Plan
SELECT 
    Plan,
    SUM(MonthlyFee) AS Revenue
FROM saas
GROUP BY Plan
ORDER BY Revenue DESC;
--Churn Rate by Acquisition Channel
SELECT 
    AcquisitionChannel,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS Churn_Count,
    CAST(
        SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*) 
    AS DECIMAL(5,2)) AS Churn_Rate
FROM saas
GROUP BY AcquisitionChannel
ORDER BY Churn_Rate DESC;