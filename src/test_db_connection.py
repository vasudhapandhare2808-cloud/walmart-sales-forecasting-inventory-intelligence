
import psycopg2

conn = psycopg2.connect(
    host="localhost",
    port="5432",
    database="walmart_sales",
    user="vasudhapandhare"
)

print("Connected to PostgreSQL successfully!")

conn.close()
