# Query Explanation: Top Products in Last 6 Months

### Purpose
This query identifies the top 3 products by total sales in each region over the last 6 months.

### Steps:
1. **sales_6m CTE**: Aggregates sales by region and product for the last 6 months.
2. **ranked CTE**: Applies DENSE_RANK to rank products within each region by total sales.
3. **Final SELECT**: Filters top 3 products per region.

### Key Functions:
- `DATEADD(MONTH, -6, CURRENT_DATE)`: Filters data for the last 6 months.
- `SUM(sales_amount)`: Calculates total sales per product.
- `DENSE_RANK() OVER (PARTITION BY region ORDER BY total_sales DESC)`: Ranks products within each region.

### Output:
- region
- product_id
- total_sales
