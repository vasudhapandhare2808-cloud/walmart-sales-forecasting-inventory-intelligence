
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Sales performance by store type

SELECT
    s."Type",
    COUNT(DISTINCT t."Store") AS store_count,
    ROUND(SUM(t."Weekly_Sales")::numeric, 2) AS total_sales,
    ROUND(AVG(t."Weekly_Sales")::numeric, 2) AS avg_weekly_sales
FROM train t
JOIN stores s
    ON t."Store" = s."Store"
GROUP BY s."Type"
ORDER BY total_sales DESC;
