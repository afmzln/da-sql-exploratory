/*  
    =======================================================
    Date Exploration: Understanding Data Time Span
    =======================================================

    Script Purpose:
        These queries help you explore temporal aspects of the data.
        Use them to validate the date ranges available and understand 
        customer demographics based on date attributes.

    -------------------------------------------------------
    Exploration Steps:
    -------------------------------------------------------
    1. Explore Fact Table Dates:
        - Identify earliest and latest order dates
        - Measure the overall time span of available sales data
        - Syntax: MIN(date_column), MAX(date_column), DATEDIFF()

    2. Explore Dimension Table Dates:
        - Identify youngest and oldest customers by birthdate
        - Calculate customer age using DATEDIFF() with GETDATE()
*/

/* =======================================================
   Step 1: Find First and Last Order Dates (Fact Table)
   ======================================================= */
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(year, MIN(order_date), MAX(order_date)) AS order_range_years
FROM gold.fact_sales;


/* =======================================================
   Step 2: Find Youngest and Oldest Customers (Dimension)
   ======================================================= */
SELECT 
    MIN(birthdate) AS oldest_birthdate,
    DATEDIFF(year, MIN(birthdate), GETDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    DATEDIFF(year, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers;
