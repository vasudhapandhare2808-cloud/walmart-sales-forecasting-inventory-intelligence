
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Highest and lowest weekly sales
-- Objective: Identify peak and low-demand weeks

WITH weekly_sales AS (
    SELECT
        "Date",
        SUM("Weekly_Sales") AS total_sales
    FROM train
    GROUP BY "Date"
)

SELECT
    "Date",
    ROUND(total_sales::numeric, 2) AS total_sales
FROM weekly_sales
ORDER BY total_sales DESC
LIMIT 5;
