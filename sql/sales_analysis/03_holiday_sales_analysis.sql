
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Holiday vs non-holiday sales
-- Objective: Understand the impact of holidays on weekly sales

SELECT
    "IsHoliday",
    COUNT(*) AS records,
    ROUND(AVG("Weekly_Sales")::numeric, 2) AS avg_weekly_sales,
    ROUND(SUM("Weekly_Sales")::numeric, 2) AS total_sales
FROM train
GROUP BY "IsHoliday"
ORDER BY "IsHoliday";
