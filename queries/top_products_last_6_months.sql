WITH sales_6m AS (
   SELECT region,
          product_id,
          SUM(sales_amount) AS total_sales
   FROM sales
   WHERE sale_date >= DATEADD(MONTH, -6, CURRENT_DATE)
   GROUP BY region, product_id
  ),
  ranked AS (
   SELECT region,
          product_id,
          total_sales,
          DENSE_RANK() OVER (
              PARTITION BY region 
              ORDER BY total_sales DESC
          ) AS rnk
   FROM sales_6m
  )
  SELECT region, product_id, total_sales
  FROM ranked
  WHERE rnk <= 3;