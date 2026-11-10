# Economic Factors and Sales Analysis

**Objective:** Examine the relationship between economic indicators and Walmart sales.

**Method:** PostgreSQL Pearson correlation analysis using joined training and economic feature data.

| Feature | Correlation |
|---|---:|
| Temperature | -0.0023 |
| Fuel price | -0.0001 |
| CPI | -0.0209 |
| Unemployment | -0.0259 |

**Finding:** All four economic indicators show very weak linear correlations with individual sales records in the overall dataset.

**Limitation:** These results do not establish that economic variables lack predictive value. Relationships may vary across stores, departments, and time periods.

**Next step:** Evaluate these features using time-aware forecasting and model performance metrics.
