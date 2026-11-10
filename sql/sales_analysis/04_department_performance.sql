
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Department-level sales performance

SELECT
    "Dept",
    COUNT(*) AS records,
    ROUND(SUM("Weekly_Sales")::numeric, 2) AS total_sales,
    ROUND(AVG("Weekly_Sales")::numeric, 2) AS avg_weekly_sales
FROM train
GROUP BY "Dept"
ORDER BY total_sales DESC
LIMIT 10;

