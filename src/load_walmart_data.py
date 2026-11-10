
import pandas as pd
import psycopg2
from sqlalchemy import create_engine
from pathlib import Path

# Project data directory
DATA_DIR = (
    Path(__file__).resolve().parent.parent
    / "data"
    / "raw"
    / "walmart-recruiting-store-sales-forecasting 7.10.03 PM"
)

# PostgreSQL connection
engine = create_engine(
    "postgresql+psycopg2://vasudhapandhare@localhost:5432/walmart_sales"
)

# CSV files and PostgreSQL table names
files = {
    "train.csv": "train",
    "features.csv": "features",
    "stores.csv": "stores",
    "test.csv": "test",
    "sampleSubmission.csv": "sample_submission"
}

for filename, table_name in files.items():
    file_path = DATA_DIR / filename

    print(f"Loading {filename}...")

    df = pd.read_csv(file_path)

    df.to_sql(
        table_name,
        engine,
        if_exists="replace",
        index=False,
        chunksize=5000
    )

    print(f"Loaded {len(df)} rows into {table_name}")

print("\nAll Walmart CSV files loaded successfully!")
