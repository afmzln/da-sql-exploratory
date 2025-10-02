/*  
    =======================================================
    Measure Exploration: Key Business Metrics
    =======================================================

    Script Purpose:
        These queries calculate the core measures ("big numbers") 
        of the business. They provide both high-level aggregations 
        and granular details when needed.

    -------------------------------------------------------
    Exploration Steps:
    -------------------------------------------------------
    1. Item Sales:
        - Find how many items were sold (total quantity)
        - Syntax: SUM(measure)

    2. Price Metrics:
        - Calculate the average selling price
        - Syntax: AVG(measure)

    3. Orders:
        - Find the total number of orders (with and without DISTINCT)
        - Syntax: COUNT(column), COUNT(DISTINCT column)

    4. Products:
        - Find the total number of products (with and without DISTINCT)

    5. Customers:
        - Count all customers
        - Count distinct customers who placed an order

    6. Key Metrics Report:
        - Union multiple KPIs into a single result set
        - Useful for dashboards or quick reporting
*/

/* =======================================================
   Step 1: Total Quantity Sold
   ======================================================= */
SELECT SUM(quantity) AS total_quantity 
FROM gold.fact_sales;


/* =======================================================
   Step 2: Average Selling Price
   ======================================================= */
SELECT AVG(price) AS avg_price 
FROM gold.fact_sales;


/* =======================================================
   Step 3: Total Number of Orders
   ======================================================= */
SELECT COUNT(order_number) AS total_orders 
FROM gold.fact_sales;

SELECT COUNT(DISTINCT order_number) AS total_orders 
FROM gold.fact_sales;


/* =======================================================
   Step 4: Total Number of Products
   ======================================================= */
SELECT COUNT(product_name) AS total_products 
FROM gold.dim_products;

SELECT COUNT(DISTINCT product_name) AS total_products 
FROM gold.dim_products;


/* =======================================================
   Step 5: Total Number of Customers
   ======================================================= */
SELECT COUNT(customer_key) AS total_customers 
FROM gold.dim_customers;

SELECT COUNT(DISTINCT customer_key) AS total_customers_with_orders 
FROM gold.fact_sales;


/* =======================================================
   Step 6: Unified Key Metrics Report
   ======================================================= */
SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value 
FROM gold.fact_sales 
UNION ALL
SELECT 'Total Quantity', SUM(quantity) 
FROM gold.fact_sales 
UNION ALL
SELECT 'Average Price', AVG(price) 
FROM gold.fact_sales 
UNION ALL
SELECT 'Total Orders', COUNT(DISTINCT order_number) 
FROM gold.fact_sales 
UNION ALL
SELECT 'Total Products', COUNT(DISTINCT product_name) 
FROM gold.dim_products 
UNION ALL
SELECT 'Total Customers', COUNT(DISTINCT customer_key) 
FROM gold.dim_customers;
