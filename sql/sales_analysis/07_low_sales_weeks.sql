
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Lowest weekly sales
-- Objective: Identify low-demand periods

SELECT
    "Date",
    ROUND(SUM("Weekly_Sales")::numeric, 2) AS total_sales
FROM train
GROUP BY "Date"
ORDER BY total_sales ASC
LIMIT 5;
