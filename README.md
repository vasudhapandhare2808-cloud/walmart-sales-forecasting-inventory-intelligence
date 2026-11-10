# Walmart Sales Forecasting & Inventory Intelligence

An end-to-end data analytics and machine learning project that analyses Walmart's historical weekly sales, identifies store and department performance patterns, and evaluates sales forecasting models.

## Project Overview

This project uses the Walmart Recruiting Store Sales Forecasting dataset to analyse weekly sales across 45 stores and multiple departments.

The workflow combines SQL-based analysis, Python exploratory data analysis, machine learning, and Tableau dashboards to understand historical sales patterns and evaluate forecasting performance.

**Dataset size:** Approximately 421,570 training records  
**Stores:** 45  
**Date range:** February 2010 to October 2012

## Project Workflow

1. **Data storage and querying:** Loaded and analysed sales data using PostgreSQL.
2. **Exploratory data analysis:** Used Python to examine sales trends, seasonality, holidays, and store-level patterns.
3. **SQL analysis:** Investigated sales performance across stores, departments, holidays, and economic indicators.
4. **Feature engineering:** Created historical sales lag and rolling-window features.
5. **Forecasting:** Trained and evaluated Random Forest and LightGBM models against a Seasonal Naive baseline.
6. **Visualisation:** Built three Tableau dashboards to communicate business and model performance.

## Technology Stack

- **Database:** PostgreSQL
- **Programming:** Python, SQL
- **Python libraries:** Pandas, NumPy, Scikit-learn, LightGBM, Matplotlib
- **Visualisation:** Tableau
- **Development:** Jupyter Notebook, Git, GitHub

## Repository Structure

```text
walmart-sales-forecasting/
│
├── dashboard/
│   └── Walmart Sales Forecasting & Inventory Intelligence.twbx
│
├── data/
│   └── processed/
│       ├── walmart_feature_importance.csv
│       └── walmart_model_comparison.csv
│
├── notebooks/
│   └── 01_walmart_sales_eda.ipynb
│
├── reports/
│   └── SQL and analytical reports
│
├── sql/
│   └── SQL analysis scripts
│
├── src/
│   ├── load_walmart_data.py
│   └── test_db_connection.py
│
├── .gitignore
├── README.md
└── requirements.txt
```

## SQL Analysis

PostgreSQL was used to investigate:

- Overall sales performance and weekly trends
- Store-wise and department-wise sales
- Top-performing and low-performing stores and departments
- Holiday versus non-holiday sales patterns
- Store type and store size comparisons
- Sales extremes and yearly trends
- Relationships between sales and economic indicators

## Exploratory Data Analysis

Python was used to clean and explore the dataset, examine sales distributions, analyse trends over time, and investigate patterns across stores, departments, and holidays.

The analysis helped identify historical sales behaviour and informed the feature engineering process for forecasting.

## Sales Forecasting

Three approaches were evaluated:

- Random Forest Regressor
- LightGBM Regressor
- Seasonal Naive baseline

The models were evaluated using a chronological validation split, with validation observations from 2012 onward. Performance was compared using Mean Absolute Error (MAE) and Root Mean Squared Error (RMSE).

### Model Performance

All three models were evaluated on the same 123,460 validation records.

| Model | MAE | RMSE |
|---|---:|---:|
| Random Forest | 1,394.19 | 3,103.01 |
| LightGBM | 1,479.31 | 3,358.93 |
| Seasonal Naive | 1,817.35 | 3,842.39 |

**Random Forest achieved the lowest MAE and RMSE** among the evaluated models.

### Feature Importance

The Random Forest model relied heavily on historical sales information.

| Feature | Importance |
|---|---:|
| Sales_Lag_52 | 81.73% |
| Sales_Lag_1 | 12.90% |
| Sales_Rolling_4 | 3.80% |
| Sales_Rolling_12 | 0.67% |
| Sales_Lag_4 | 0.38% |

The remaining features included week, department, store, month, and holiday indicators.

Sales from the corresponding week in the previous year (`Sales_Lag_52`) was the most influential feature.

## Tableau Dashboards

The Tableau workbook contains three dashboards:

### 1. Executive Sales Overview
- Total sales and average sales KPIs
- Store and department counts
- Weekly sales trends
- Top-performing stores and departments
- Holiday versus non-holiday sales comparison

### 2. Store & Department Performance
- Store rankings
- Department rankings
- Store-level performance analysis
- Department heatmap
- Store type comparisons
- Sales distribution

### 3. Sales Forecasting & Model Performance
- MAE comparison across models
- RMSE comparison across models
- Actual versus Random Forest predicted weekly sales
- Random Forest feature importance

**Tableau Public:** Add the published dashboard link here.

## Business Applications

The analysis can support retail planning activities such as:

- Identifying high-performing stores and departments
- Understanding seasonal and holiday sales patterns
- Comparing historical sales performance
- Using sales forecasts as an input to demand and inventory planning

## Project Limitations

- The dataset contains historical sales and related explanatory variables, but does not include actual inventory-on-hand, stockout, replenishment, or lost-sales records.
- The project therefore evaluates sales forecasting and potential inventory-planning applications. It does not directly measure inventory optimisation or stockout reduction.
- The forecasting validation uses a one-week-ahead evaluation setup in which the previous week's actual sales are available for lag and rolling features. It is not a recursive multi-week forecast.

## Future Improvements

- Integrate inventory-on-hand and replenishment data.
- Evaluate forecast performance across individual stores and departments.
- Explore additional forecasting approaches.
- Develop inventory planning recommendations using demand forecasts.

## Dataset

The project uses the [Walmart Recruiting Store Sales Forecasting dataset](https://www.kaggle.com/competitions/walmart-recruiting-store-sales-forecasting).

The raw dataset is not included in this repository. Download it from Kaggle and place the relevant CSV files in the expected local data directory before running the project.

## Author

**Vasudha Pandhare**

B.Tech, Electronics and Communication Engineering (AI & ML)

GitHub: [vasudhapandhare2808-cloud](https://github.com/vasudhapandhare2808-cloud)