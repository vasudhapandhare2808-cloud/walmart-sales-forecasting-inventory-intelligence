
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Store-level sales performance
-- Objective: Identify the highest-performing Walmart stores

SELECT
    "Store",
    ROUND(SUM("Weekly_Sales")::numeric, 2) AS total_sales,
    ROUND(AVG("Weekly_Sales")::numeric, 2) AS avg_weekly_sales
FROM train
GROUP BY "Store"
ORDER BY total_sales DESC
LIMIT 10;
