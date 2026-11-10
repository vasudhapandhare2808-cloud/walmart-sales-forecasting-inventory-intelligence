
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Store size and total sales across all stores

SELECT
    s."Store",
    s."Type",
    s."Size",
    ROUND(SUM(t."Weekly_Sales")::numeric, 2) AS total_sales,
    ROUND(AVG(t."Weekly_Sales")::numeric, 2) AS avg_weekly_sales
FROM train t
JOIN stores s
    ON t."Store" = s."Store"
GROUP BY s."Store", s."Type", s."Size"
ORDER BY s."Store";
