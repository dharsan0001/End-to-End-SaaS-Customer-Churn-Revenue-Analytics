# End-to-End-SaaS-Customer-Churn-Revenue-Analytics
This is End-to-End SaaS Customer Churn &amp; Revenue Analytics
SQL | Excel | Power BI Project
🚀 Project Overview

This project analyzes a SaaS (Software as a Service) business dataset to understand:

Customer churn behavior

Revenue performance

Customer lifetime value

Acquisition channel effectiveness

Business KPIs for growth monitoring

The project was completed using:

Excel – Data cleaning & initial KPI analysis

SQL Server – Data querying & advanced business logic

Power BI – Interactive dashboard creation

📁 Dataset Information

Total Customers: 15,000

Columns Used:

CustomerID

Plan

SignupDate

MonthlyFee

AcquisitionChannel

MarketingCost

Churn (Boolean)

ChurnDate

🎯 Business KPIs Calculated
📌 Core Metrics

Total Customers

Churn Count

Churn Rate %

Total Revenue (MRR)

Revenue Lost due to Churn

ARPU (Average Revenue Per User)

Customer Lifetime Value (CLTV)

🧠 SQL Analysis Performed

Total customer count

Churn rate calculation using CASE statements

Revenue aggregation by plan

Churn rate by acquisition channel

Revenue lost due to churn

Grouped KPI analysis

Example SQL Logic:

SELECT 
    CAST(
        SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*) 
    AS DECIMAL(5,2)) AS Churn_Rate_Percentage
FROM saas;
📊 Power BI Dashboard Features
🔹 KPI Cards

Total Customers

Total Revenue

Churn Rate %

Revenue Lost

🔹 Visualizations

Revenue by Plan

Churn Rate by Acquisition Channel

Revenue Trend by Year

Plan Distribution

📈 Key Business Insights

Churn rate maintained around ~30%

Certain acquisition channels show higher churn rates

Enterprise plan generates highest revenue

Revenue loss from churn significantly impacts MRR

🛠 Tools & Technologies Used

Microsoft Excel

SQL Server (SSMS)

Power BI Desktop

GitHub (Version Control)

💼 Why This Project Matters

This project demonstrates:

✔ Data cleaning and validation
✔ SQL analytical querying
✔ KPI calculation logic
✔ Business storytelling through dashboards
✔ End-to-end analytics workflow

📌 Future Improvements

Predictive churn modeling using Python

Cohort analysis

Customer segmentation

Marketing ROI optimization

👨‍💻 Author

Dharsan Mathiyalagan

