
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Weekly sales trends
-- Objective: Identify changes in sales over time

SELECT
    "Date",
    ROUND(SUM("Weekly_Sales")::numeric, 2) AS total_weekly_sales
FROM train
GROUP BY "Date"
ORDER BY "Date";
