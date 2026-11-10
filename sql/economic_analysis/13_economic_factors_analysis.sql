
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Economic and external factors vs sales

SELECT
    ROUND(AVG(t."Weekly_Sales")::numeric, 2) AS avg_weekly_sales,
    ROUND(AVG(f."Temperature")::numeric, 2) AS avg_temperature,
    ROUND(AVG(f."Fuel_Price")::numeric, 2) AS avg_fuel_price,
    ROUND(AVG(f."CPI")::numeric, 2) AS avg_cpi,
    ROUND(AVG(f."Unemployment")::numeric, 2) AS avg_unemployment
FROM train t
JOIN features f
    ON t."Store" = f."Store"
    AND t."Date" = f."Date";
