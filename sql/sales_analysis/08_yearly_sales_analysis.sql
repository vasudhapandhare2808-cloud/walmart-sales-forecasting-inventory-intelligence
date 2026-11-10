
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Yearly sales performance

SELECT
    EXTRACT(YEAR FROM "Date"::date) AS sales_year,
    COUNT(DISTINCT "Date") AS weeks_recorded,
    ROUND(SUM("Weekly_Sales")::numeric, 2) AS total_sales,
    ROUND(AVG("Weekly_Sales")::numeric, 2) AS avg_weekly_sales
FROM train
GROUP BY EXTRACT(YEAR FROM "Date"::date)
ORDER BY sales_year;
