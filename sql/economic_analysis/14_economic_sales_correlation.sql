
-- Project: Walmart Store Sales Forecasting & Inventory Intelligence
-- Analysis: Correlation between economic factors and sales

SELECT
    ROUND(CORR(t."Weekly_Sales", f."Temperature")::numeric, 4)
        AS temperature_sales_corr,

    ROUND(CORR(t."Weekly_Sales", f."Fuel_Price")::numeric, 4)
        AS fuel_sales_corr,

    ROUND(CORR(t."Weekly_Sales", f."CPI")::numeric, 4)
        AS cpi_sales_corr,

    ROUND(CORR(t."Weekly_Sales", f."Unemployment")::numeric, 4)
        AS unemployment_sales_corr

FROM train t
JOIN features f
    ON t."Store" = f."Store"
    AND t."Date" = f."Date";
