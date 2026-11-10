# Store Size and Sales Analysis

**Objective:** Examine the relationship between Walmart store size and sales performance.

**Method:** Calculated Pearson correlation coefficients across 45 stores using PostgreSQL.

| Metric | Correlation |
|---|---:|
| Store size vs. total sales | 0.8462 |
| Store size vs. average sales per record | 0.8072 |

**Finding:** Store size shows a strong positive relationship with both total sales and average sales per record. Larger stores generally generate higher sales, although store size alone does not explain all sales variation.

**Limitation:** Correlation does not imply causation. Other store characteristics may influence sales.

**Business implication:** Store size may be useful as a feature in store-level sales forecasting models.
