
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Top-performing store and department combinations
-- Purpose: Identify sales concentration across stores and departments

SELECT
    "Store",
    "Dept",
    ROUND(AVG("Weekly_Sales")::numeric, 2) AS avg_weekly_sales,
    ROUND(SUM("Weekly_Sales")::numeric, 2) AS total_sales
FROM train
GROUP BY "Store", "Dept"
ORDER BY total_sales DESC
LIMIT 10;
