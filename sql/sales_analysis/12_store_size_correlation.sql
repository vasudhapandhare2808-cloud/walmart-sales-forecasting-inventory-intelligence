
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Correlation between store size and sales

WITH store_sales AS (
    SELECT
        s."Store",
        s."Type",
        s."Size",
        SUM(t."Weekly_Sales") AS total_sales,
        AVG(t."Weekly_Sales") AS avg_weekly_sales
    FROM train t
    JOIN stores s
        ON t."Store" = s."Store"
    GROUP BY s."Store", s."Type", s."Size"
)

SELECT
    ROUND(CORR("Size"::numeric, total_sales)::numeric, 4)
        AS size_total_sales_correlation,
    ROUND(CORR("Size"::numeric, avg_weekly_sales)::numeric, 4)
        AS size_avg_sales_correlation
FROM store_sales;
