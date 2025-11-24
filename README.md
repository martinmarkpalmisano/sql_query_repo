# SQL Query Repository

This repository contains reusable SQL queries and sample datasets for analytics and reporting.

## 📂 Structure
```
queries/      # SQL queries
data/         # Sample datasets
docs/         # Query explanations
```

## 🚀 How to Use
1. Clone the repository:
   ```bash
git clone https://github.com/your-username/sql-query-repo.git
cd sql-query-repo
   ```

2. Load the sample dataset into your database:
   ```sql
CREATE TABLE sales (
    sale_date DATE,
    region VARCHAR(50),
    product_id VARCHAR(50),
    sales_amount DECIMAL(10,2)
);

COPY sales FROM 'data/sales_dataset.csv' DELIMITER ',' CSV HEADER;
   ```

3. Run the query:
   ```sql
\i queries/top_products_last_6_months.sql
   ```

## 📖 Documentation
Refer to `docs/query_explanation.md` for detailed query logic.

## 🤝 Contributing
Feel free to fork the repo and submit pull requests for new queries or improvements.

## 📜 License
MIT License
